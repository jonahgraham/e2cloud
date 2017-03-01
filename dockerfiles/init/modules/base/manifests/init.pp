class base {
  $dirs = [
    "/opt/e2cloud",
    "/opt/e2cloud/data",
    "/opt/e2cloud/config",
    "/opt/e2cloud/logs",
    "/opt/e2cloud/templates",
    "/opt/e2cloud/stacks" ]
  file { $dirs:
    ensure  => "directory",
    mode    => "755",
  }
  
  include e2cloud
  include compose
}
