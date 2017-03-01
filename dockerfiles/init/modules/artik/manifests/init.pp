class e2cloud {

# creating e2cloud.env
  file { "/opt/e2cloud/config/e2cloud.env":
    ensure  => "present",
    content => template("e2cloud/e2cloud.env.erb"),
    mode    => "644",
  }
}
