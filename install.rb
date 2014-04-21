
files = [
  'bashrc',
  'gitconfig',
  'vimrc',
  'Xdefaults',
]

if __FILE__ == $0
  dir = File.dirname File.absolute_path __FILE__ 

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

end
