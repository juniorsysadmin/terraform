variable "name" {
  description = "name of the team"
}

variable "description" {
  description = "name of the team"
}

resource "github_team" "team" {
  name        = "${var.name}"
  description = "${var.description}"
  privacy     = "closed"
}

output "id" {
  value = "${github_team.team.id}"
}
