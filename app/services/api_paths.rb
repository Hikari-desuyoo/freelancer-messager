class ApiPaths
  def self.hiring_path(relative_path)
    "http://#{ENV['HIRING_URI']}#{relative_path}"
  end
end