Puppet::Type.type(:error_type).provide(:simple) do

  mk_resource_methods

  def self.instances
    puts "instances for class Error_type"
    [
      new(name:'a', ensure: :present, prop:'a'),
      new(name:'b', ensure: :present, prop:'b'),
      new(name:'c', ensure: :present, prop:'c'),
      new(name:'d', ensure: :present, prop:'d'),
      new(name:'e', ensure: :present, prop:'e'),
    ]
  end

  def self.prefetch(resources)
    puts 'prefetch for class Error_type'
    resources
  end


  def exists?
    puts "exists? #{resource.path}"
    true
  end

end
