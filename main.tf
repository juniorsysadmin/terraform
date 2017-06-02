variable "github_token" {
  type        = "string"
  description = "A GitHub API token that has admin rights over Vox Pupuli."
}

variable "github_organization" {
  type        = "string"
  description = "A GitHub API token that has admin rights over Vox Pupuli."
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}
