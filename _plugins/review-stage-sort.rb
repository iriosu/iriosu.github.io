# Orders bibliography lists by how close each paper is to publication.
#
# Papers are grouped by status (the `keywords` field): published, then
# under-review, then working-paper, then work-in-progress. Papers under review
# are then ordered by the stage in their `note` field:
#
#   Minor revision > Revise and resubmit > Major revision > Resubmitted
#   > Reject and resubmit > Submitted
#
# Ties keep the usual order from `scholar.sort_by` (year, then title).
require "jekyll/scholar"

module Jekyll
  class Scholar
    module ReviewStageSort
      STATUS_RANK = {
        "published" => 0,
        "under-review" => 1,
        "working-paper" => 2,
        "work-in-progress" => 3,
      }.freeze

      STAGES = [
        /minor revision/,
        /revise (and|&) resubmit|\br\s*\\?&\s*r\b/,
        /major revision/,
        /\bresubmitted\b/,
        /reject (and|&) resubmit/,
        /\bsubmitted\b/,
      ].freeze

      def self.status_rank(entry)
        keywords = entry[:keywords].to_s.split(",").map(&:strip)
        keywords.map { |k| STATUS_RANK[k] }.compact.min || STATUS_RANK.size
      end

      def self.stage_rank(entry)
        return 0 unless status_rank(entry) == STATUS_RANK["under-review"]

        note = entry[:note].to_s.downcase
        STAGES.index { |pattern| note.match?(pattern) } || STAGES.size
      end

      def sort(unsorted)
        sorted = super
        return sorted if skip_sort?

        sorted.each_with_index
              .sort_by { |entry, i| [ReviewStageSort.status_rank(entry), ReviewStageSort.stage_rank(entry), i] }
              .map(&:first)
      end
    end

    BibliographyTag.prepend(ReviewStageSort)
  end
end
