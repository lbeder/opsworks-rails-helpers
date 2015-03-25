node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'rails'
    Chef::Log.debug("Skipping application #{application} as it is not a rails app")
    next
  end

  magic_shell_alias :console do
    command "cd #{deploy[:current_path]} && #{node[:rails_helpers][:console]}"
  end

  magic_shell_alias :logs do
    command "cd #{deploy[:current_path]} && #{node[:rails_helpers][:logs]}"
  end
end
