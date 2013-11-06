# -*- coding: utf-8 -*-
require "make_chrome_extension/version"

module MakeChromeExtension
  def self.new_template(app_name)
      # make main dir
      Dir::mkdir("./#{app_name}")
      
      # make manifest file
      make_manifest(app_name)
  end

  def self.make_manifest(app_name)
      contents = <<-"EOF"
{
	"manifest_version": 2,
	"name": "#{app_name}",
//TODO	"description": "Delete the cookie and history of your web browser for your privacy",
	"version": "1",
	"browser_action": {
//TODO			  "default_icon": "images/icon.png"
			  },
//	"icons": {
//		 "16": "images/16.png",
//		 "48": "images/48.png",
//		 "128": "images/128.png"
//		 },
//TODO	"permissions": ["http://*/*", "https://*/*"],
//	"options_page": "options.html",
//	"web_accessible_resources": ["images/48.png"]
	"background": {
		      "scripts": ["background.js"]
		      }
}
      EOF
      manifest_file = File.open("manifest.json", "w")
      manifest_file.write(contents)
      manifest_file.close
  end
end