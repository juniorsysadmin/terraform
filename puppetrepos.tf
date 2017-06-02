module "puppet-corosync" {
  source      = "./repository"
  name        = "puppet-corosync"
  description = "Sets up and manages Corosync."
  url         = "https://forge.puppet.com/puppet/corosync"
  team        = "${module.puppet_team.id}"
}
