dir = File.dirname File.absolute_path __FILE__ 

ls = `ls -1 #{dir}/files`
files = ls.split

files.each do |file|
  f = "#{dir}/files/#{file}"
  n = "#{ENV['HOME']}/.#{file}"
  unless File.exist? n
    File.link f, n
    puts "link #{f} -> #{n}"
  else
    puts "file '#{n}' exist!"
  end
end
