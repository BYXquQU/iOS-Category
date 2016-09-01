
Pod::Spec.new do |s|

  s.name         = "XBCategory"
  s.version      = "0.0.3"
  s.summary      = "iOS Categories"
  s.description  = <<-DESC
                    iOS commonly used Categories
                   DESC
  s.homepage     = "https://github.com/JKbai/iOS-Category.git"
  s.license      = "MIT"

  s.author             = { "baiyinxiao" => "bai_yinxiao@163.com" }

  s.platform     = :ios, "7.0"


  s.source       = { :git => "https://github.com/JKbai/iOS-Category.git", :tag => "0.0.3" }

s.source_files  = "Category(分类)", "iOS-XBCategory/Category(分类)/**/*.{h,m}"


end
