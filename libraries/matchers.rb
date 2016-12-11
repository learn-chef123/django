#https://github.com/sethvargo/chefspec#packaging-custom-matchers

# if defined?(ChefSpec)
#   def my_custom_matcher(resource_name)
#     ChefSpec::Matchers::ResourceMatcher.new(resource, action, resource_name)
#   end
# end

if defined?(ChefSpec)
  def install_pip(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:pip, :install, resource_name)
  end
end
