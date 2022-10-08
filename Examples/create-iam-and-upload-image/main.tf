module "zedcloud-aws-s3-datastore" {
  source  = "bayupw/zedcloud-aws-s3-datastore/aws"
  version = "1.0.0"
  
  s3_folder               = "my-folder"
  upload_image            = true
  image_filename          = "my-image.qcow2"
  zedcloud_image_name     = "my-image.qcow2"
  zedcloud_datastore_name = "my-s3-datastore"
}

output "zedcloud-aws-s3-datastore" {
  value     = module.zedcloud-aws-s3-datastore
  sensitive = true
}