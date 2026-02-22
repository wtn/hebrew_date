# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'hebrew_date'
  spec.version = '1.1.2'
  spec.date = '2026-02-22'
  spec.authors = ['Daniel Orner']
  spec.email = ['dmorner@gmail.com']

  spec.summary = 'Hebrew/Jewish dates, times, and holidays.'
  spec.description = <<~EOF
    hebrew_date is a library designed to provide information about the Jewish
    calendar. This includes dates, holidays, and parsha of the week.
  EOF
  spec.homepage = 'https://github.com/dorner/hebrew_date'
  spec.license = 'MIT'
  spec.required_ruby_version = ">= 3.1.0"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[doc/ Gemfile .gitignore spec/])
    end
  end
  spec.require_paths = ['lib']
end
