# frozen_string_literal: true

require "lutaml/model"

require_relative "basic_text"
require_relative "abbrev"
require_relative "alternatives"
require_relative "bold"
require_relative "chem_struct"
require_relative "email"
# require_relative "ext_link"
require_relative "fixed_case"
require_relative "fn"
require_relative "index_term"
require_relative "index_term_range_end"
require_relative "inline_formula"
require_relative "inline_graphic"
require_relative "inline_media"
# require_relative "inline_supplementary_material"
require_relative "italic"
require_relative "milestone_end"
require_relative "milestone_start"
require_relative "monospace"
require_relative "named_content"
require_relative "overline"
require_relative "private_char"
require_relative "related_article"
require_relative "related_object"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "target"
require_relative "tex_math"
require_relative "uri"
require_relative "xref"

module Niso
  module Jats
    class ExtLink < Lutaml::Model::Serializable
    end

    class InlineSupplementaryMaterial < Lutaml::Model::Serializable
    end

    class Underline < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :toggle, :string
      attribute :underline_style, :string
      include ::Niso::Jats::BasicText

      xml do
        root "underline"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "toggle", to: :toggle
        map_attribute "underline-style", to: :underline_style
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "inline-supplementary-material", to: :inline_supplementary_material
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
        map_element "bold", to: :bold
        map_element "fixed-case", to: :fixed_case
        map_element "italic", to: :italic
        map_element "monospace", to: :monospace
        map_element "overline", to: :overline
        map_element "roman", to: :roman
        map_element "sans-serif", to: :sans_serif
        map_element "sc", to: :sc
        map_element "strike", to: :strike
        map_element "underline", to: :underline
        map_element "ruby", to: :ruby
        map_element "alternatives", to: :alternatives
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
