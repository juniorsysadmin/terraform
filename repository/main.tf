variable "name" {
  type        = "string"
  description = "name of the repository"
}

variable "url" {
  type        = "string"
  description = "url of the repo (e.g. link to the forge)"
}

variable "team" {
  type        = "string"
  description = "name of the team that has push access to the repo"
}

variable "description" {
  type        = "string"
  description = "description of the repository"
}

resource "github_repository" "repository" {
  name          = "${var.name}"
  description   = "${var.description}"
  homepage_url  = "${var.url}"
  has_issues    = true
  has_wiki      = false
  has_downloads = true
}

resource "github_team_repository" "collaborators" {
  team_id    = "${var.team}"
  repository = "${github_repository.repository.name}"
  permission = "push"
}
