# -*- coding: utf-8 -*-
require "make_chrome_extension/version"

module MakeChromeExtension
  def self.new_template(app_name)
      # make main dir
      Dir::mkdir("./#{app_name}")
      
      # make manifest file
      make_manifest(app_name)
      make_background_item(app_name)
      make_readme(app_name)
      make_option(app_name)

      puts "Finish making template file of chrome extension for you !!"
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
      manifest_file = File.open("./#{app_name}/manifest.json", "w")
      manifest_file.write(contents)
      manifest_file.close
  end
  
  def self.make_background_item(app_name)
      background_html_contens = <<-"EOF"
<html>
	<head>
		<script type="text/javascript" src="./background.js"></script>
	</head>
	<body>
	</body>
</html>
      EOF
      background_html_file = File.open("./#{app_name}/background.html", "w")
      background_html_file.write(background_html_contens)
      background_html_file.close

      background_js_contens = <<-"EOF"
chrome.browserAction.onClicked.addListener(function(activeTab) {
							       var newURL = "options.html";
							       chrome.tabs.create({
								url : newURL
								});
});
      EOF
      background_js_file = File.open("./#{app_name}/background.html", "w")
      background_js_file.write(background_js_contens)
      background_js_file.close
  end

  def self.make_readme(app_name)
            readme_contens = <<-"EOF"
<html>
	<head>
		<script type="text/javascript" src="./background.js"></script>
	</head>
	<body>
	</body>
</html>
      EOF
      readme_file = File.open("./#{app_name}/README.md", "w")
      readme_file.write(readme_contents)
      readme_file.close
  end

  def self.make_option(app_name)
      option_html_contens = <<-"EOF"
<html>
        <head>
                <title>Optio page</title>
        </head>
        <body>
		<h1>Chrome extension option page</h1>
		<p>hello chrome extension!!</p>
        </body>
</html>
      EOF
      option_html_file = File.open("./#{app_name}/option.html", "w")
      option_html_file.write(option_html_contens)
      option_html_file.close
  end
end