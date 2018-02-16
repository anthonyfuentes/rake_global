

module Helper
  def self.const_missing(name)
    file_name = "#{name.to_s.downcase!}"
    working_dir = self.working_dir

    require "#{working_dir}/helpers/#{file_name}.rb"
    Helper.const_get(name)
  end

  def self.working_dir(file = __FILE__)
    File.dirname(file)
  end
end
