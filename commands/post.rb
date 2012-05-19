usage       'create:post [options]'
aliases     :cp
summary     'create a new blog post'
description ''

flag   :h, :help,  'show help for this command' do |value, cmd|
  puts cmd.help
  exit 0
end

run do |opts, args, cmd|
  title = args.first
  puts "Creating a blog post with a name '#{title}'. Stand by..."

  date = Time.now
  #strftime("%Y_%m") 
  
  filename, path = calc_path(title.downcase, date)

  template = <<TEMPLATE
---
created_at: #{date}
kind: article
publish: true
title: "#{title}"
---

TODO: Add content to `#{path}.`
TEMPLATE

  File.open(path, 'w') { |f| f.write(template) }
  puts "\t[ok] Edit #{path}"
end

def calc_path(title, date)
  filename = "#{date.strftime('%Y-%m')}_#{title.gsub(/[,.-]/, " ").split.join('_')}.md"
  path = "content/blog/#{filename}"
  [filename, path]
end