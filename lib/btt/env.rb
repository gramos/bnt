class Cage
  
  def self.path
    error_msg = <<-EOS "\n\nEmpty cage path please ensure that CAGE_PATH env var is available 'export CAGE_PATH=/home/user/bosh-cages'"
EOS
    raise error_msg if ENV['CAGE_PATH'].nil?
    ENV['CAGE_PATH']
  end
  
  def self.packages_path
    "/var/vcap/packages"
  end
  
  def self.package_path(pkg)
    "#{path}#{packages_path}/#{pkg}"
  end
end

class Runner
  def self.exec(cmd)
    puts cmd
    system cmd
  end
end
