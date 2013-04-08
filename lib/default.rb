# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'pygments.rb'

require 'yaml'
YAML::ENGINE.yamler = 'syck'

include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::XMLSitemap

def combined(assets, type='stylesheets')
  content = []

  assets.each do |asset|
    item = @items.find { |i| i.identifier == "/#{type}/#{asset}/" }
    if item
      content << item.compiled_content
    end
  end

  content.join("\n")
end
