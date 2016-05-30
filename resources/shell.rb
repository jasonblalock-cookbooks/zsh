property :username, String

action :set do
  user username do
    shell '/usr/bin/zsh'
    only_if "getent passwd #{username}"
  end
end

action :reset do
  user username do
    shell '/bin/bash'
    only_if "getent passwd #{username}"
  end
end
