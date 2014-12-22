Pod::Spec.new do |s|


  s.name         = "NXCategory"
  s.version      = "1.0.0"
  s.summary      = "ios category extended"

  s.description  = <<-DESC
                   A longer description of NXCategory in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/StevenWung/NXCategory"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "StevenWung" => "stevnwung@yeah.net" }
  s.source       = { :git => "https://github.com/StevenWung/NXCategory.git", :tag => "1.0.0" }
  s.source_files  = "NXCategory", "Category/NX*.{h,m}"

end
