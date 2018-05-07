class Catalog
  def parts
      files = Dir.entries(File.expand_path('../public/', __dir__)){|f| }.
          select{|f| f.include? '.html'}.
          map{|f|  f.gsub(".html","")}
  end
end