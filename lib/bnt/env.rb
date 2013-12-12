class Cage

  def self.path
    error_msg = <<-EOS "\n\nEmpty cage path please ensure that CAGE_PATH env var is available 'export CAGE_PATH=~/.bnt/cages/latest-bosh-stemcell/'"
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

  def self.tmp_dir
    "#{path}/tmp/bosh-release"
  end
end

class Runner
  def self.exec(args)
    msg = ""
    cmd = args

    if args.is_a? Hash
      cmd = args[:cmd]
      msg = "* #{args[:msg]}"
    end

    puts "#{msg} ==> #{cmd}"
    system cmd
  end
end
