
Puppet::Type.newtype(:error_type) do

  desc <<-EOD
    Error's when used with puppet generate type

  EOD

  ensurable

  def destroy
  end

  def create
  end

  newparam(:name) do
    desc <<-EOD
      The Full name
    EOD
    isnamevar
  end

  newproperty(:prop) do

    def insync?(is)
      puts "insync #{path} property #{name}"
      super
    end
  end

end
