# module source is the terraform registry modue for s3 bucket.
# We can also use the source as a local path to the module. In that case we need to provide the relative path to the module.
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "boddu-bucket-20260318"
  #acl    = "private"

  #control_object_ownership = true
  #object_ownership         = "ObjectWriter"

#   versioning = {
#     enabled = true
#   }
}