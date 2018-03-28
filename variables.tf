variable "website_name" {
  type = "string"
  description = "A friendly name to give your website. E.g. mypersonalblog or my-company-website. Cannot contain underscores."
}
variable "website_url" {
  type = "string"
  description = "The url you want your website to be accessable on, exlcuding the www. E.g. myblog.com or admin.myblog.com"
}

variable "website_root_domain" {
  type = "string"
  description = "The root domain where your DNS entry for your website will be created. E.g. mydomain.com or work.mydomain.com"
}

variable "prefix" {
  type = "string"
  description = "All resources get prefixed with this variable. Can be business unit name or personal identifier. E.g. bob or marketing"
}

variable "website_owner" {
  type = "string"
  description = "Tag of who owns all the resources that get created by this module. E.g. Bob Smith."
}
