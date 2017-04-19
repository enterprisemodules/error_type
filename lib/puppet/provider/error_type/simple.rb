Puppet::Type.type(:error_type).provide(:simple) do

  def self.instances
    [
      new(name:'top_level1/lower_level1', ensure: :present),
      new(name:'top_level2/lower_level1', ensure: :present),
      new(name:'top_level3/lower_level1', ensure: :present),
      new(name:'top_level1/lower_level2', ensure: :present),
      new(name:'top_level2/lower_level2', ensure: :present),
      new(name:'top_level3/lower_level3', ensure: :present),
      new(name:'top_level1/lower_level3', ensure: :present),
      new(name:'top_level2/lower_level3', ensure: :present),
      new(name:'top_level3/lower_level4', ensure: :present),
    ]
  end

  def exists?
    true
  end

end
