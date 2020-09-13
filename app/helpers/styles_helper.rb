# frozen_string_literal: true

require 'coderay'

module StylesHelper
  def bootstrap_flash_class(type)
    case type
    when 'alert' then 'warning'
    when 'error' then 'danger'
    when 'warning' then 'warning'
    when 'notice' then 'success'
    else
      'info'
    end
  end

  def button_class(style = 'primary')
    "btn btn-sm btn-outline-#{style}"
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      language = 'bash' if language.nil?
      CodeRay.scan(code, language).div(line_numbers: :table)
    end
  end

  # rubocop disable: Metrics/MethodLength Rails/OutputSafety
  def markdown(text)
    coderay_options = {
      filter_html: true,
      hard_wrap: true,
      safe_links_only: true,
      with_toc_data: true,
      prettify: true
    }

    redcarpet_options = {
      autolink: true,
      disable_indented_code_blocks: false,
      fenced_code_blocks: true,
      highlight: true,
      lax_html_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true
    }

    coderayified = CodeRayify.new(coderay_options)
    markdown_to_html = Redcarpet::Markdown.new(coderayified, redcarpet_options)
    markdown_to_html.render(text).html_safe
  end
  # rubocop enable: Metrics/MethodLength Rails/OutputSafety
end
