
Pod::Spec.new do |s|

  s.name         = "XBCategory"
  s.version      = "0.0.1"
  s.summary      = "iOS commonly used Categories"
  s.description  = <<-DESC
                    iOS Categories
                   DESC
  s.homepage     = "https://github.com/JKbai/iOS-Category.git"
  s.license      = "MIT"

  s.author             = { "baiyinxiao" => "bai_yinxiao@163.com" }

  s.platform     = :ios, "7.0"


  s.source       = { :git => "https://github.com/JKbai/iOS-Category.git", :tag => "0.0.1" }

s.source_files  = "Category(分类)", "iOS-XBCategory/Category(分类)/**/*.{h,m}"


end
