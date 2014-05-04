Pod::Spec.new do |s|
  s.name         = 'KMCategories'
  s.version      = '0.1'
  s.license      =  { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  s.homepage     = 'http://iksnae.com/kategories'
  s.authors      = {'Khalid Mills' => 'mustkre8@gmail.com'}
  s.summary      = <<-DESC
A simple pin pad UI similar to Apple
DESC


# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {:git => 'https://devious.repositoryhosting.com/git/devious/kmcategories.git',
  :tag => '0.1' }
  s.source_files = 'KMCategories'
  s.framework    =  'CoreGraphics'

  s.requires_arc = true
  
# Pod Dependencies

end