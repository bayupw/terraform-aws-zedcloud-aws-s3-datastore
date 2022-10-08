# Terraform AWS S3 bucket Zededa ZedCloud Data Store

Terraform module for creating AWS S3 bucket to be used for Zededa ZedCloud Data Store

## Sample usage

By default, module will create a new IAM user for S3.
To upload image, set upload_image to true and place file in the current working directory

```hcl
module "zedcloud-aws-s3-datastore" {
  source = "../terraform-aws-zedcloud-aws-s3-datastore"
  #version = "1.0.0"
  
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
```

Note:
When creating ZedCloud AWS S3 datastore via zCLI, supported regions are ['us-east-1', 'us-east-2', 'us-west-1', 'us-west-2']

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-aws-zedcloud-aws-s3-datastore/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-aws-zedcloud-aws-s3-datastore/tree/master/LICENSE) for full details.