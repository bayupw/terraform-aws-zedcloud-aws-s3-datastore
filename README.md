# Terraform AWS S3 bucket Zededa ZedCloud Data Store

Terraform module for creating AWS S3 bucket to be used for Zededa ZedCloud Data Store

## Sample usage

By default, module will create a new IAM user for S3.
To upload image, set upload_image to true and place file in the current working directory

To run this project, you will need to set the following environment variables or the [shared configuration and credentials files](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION

```hcl
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
```

Note:
- When creating ZedCloud AWS S3 datastore via zCLI, supported regions are ['us-east-1', 'us-east-2', 'us-west-1', 'us-west-2']
- See the [AWS S3 User Guide](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html) for more information about virtual-hosted and path-style URLs

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-aws-zedcloud-aws-s3-datastore/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-aws-zedcloud-aws-s3-datastore/tree/master/LICENSE) for full details.