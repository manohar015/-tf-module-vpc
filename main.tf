module "vpc" {
  source = "git::https://github.com/b50-clouddevops/tf-module-vpc.git?ref=vmain"
}

# Always the source attribute in terraform module cannot be parameterized.

# if it cannot be handled or paramterize the source, how are we going to tell, fetch from x branch and  when branches are dynamic