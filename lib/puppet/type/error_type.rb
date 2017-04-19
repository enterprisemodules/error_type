
Puppet::Type.newtype(:error_type) do

  desc <<-EOD
    Error's when used with puppet generate type

  EOD

  ensurable

  def destroy
  end


  newparam(:name) do
    desc <<-EOD
      The Full name
    EOD
    isnamevar
  end

  newparam(:top_level) do
    desc <<-EOD
      The top level name
    EOD
    isnamevar
  end

  newparam(:lower_level) do
    desc <<-EOD
      The lower level name
    EOD
    isnamevar
  end

  def self.title_patterns
    [
      [ /^((.+)\/(.*))$/,  [[:name], [:top_level], [:lower_level]]]
    ]
  end

end
