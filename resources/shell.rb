property :username, String

action :create do
  user username do
    shell '/usr/bin/zsh'
    only_if "getent passwd #{username}"
  end
end

action :delete do
  user username do
    shell '/bin/bash'
    only_if "getent passwd #{username}"
  end
end
