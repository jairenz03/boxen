
class people::lemnabong {

  # Back-end Developer Classification
  require groups::shiva

  notify { "Hello ${::boxen_user}, Let's get you bootstrapped.": }
  notify { "We're now going to run the setup to make you feel at home.": }


}
