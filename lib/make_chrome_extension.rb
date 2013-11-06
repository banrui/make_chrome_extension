require "make_chrome_extension/version"

module MakeChromeExtension
  def self.new_template(app_name)
      Dir::mkdir("./#{app_name}")
  end
end
