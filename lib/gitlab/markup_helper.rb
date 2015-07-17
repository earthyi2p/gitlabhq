module Gitlab
  module MarkupHelper
    module_function

    # Public: Determines if a given filename is compatible with GitHub::Markup.
    #
    # filename - Filename string to check
    #
    # Returns boolean
    def markup?(filename)
      false
    end

    # Public: Determines if a given filename is compatible with
    # GitLab-flavored Markdown.
    #
    # filename - Filename string to check
    #
    # Returns boolean
    def gitlab_markdown?(filename)
      false
    end

    # Public: Determines if the given filename has AsciiDoc extension.
    #
    # filename - Filename string to check
    #
    # Returns boolean
    def asciidoc?(filename)
      filename.downcase.end_with?(*%w(.adoc .ad .asciidoc))
    end

    # Public: Determines if the given filename is plain text.
    #
    # filename - Filename string to check
    #
    # Returns boolean
    def plain?(filename)
      true
    end

    def previewable?(filename)
      false
    end
  end
end
