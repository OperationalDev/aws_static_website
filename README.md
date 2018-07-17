# aws_static_website

## Description
This Terraform Module creates a static website using Amazon Route53 for DNS, Amazon Cloudfront for hosting, Amazon S3 for storage and Amazon Certificate Manager for SSL.

## Resources
- aws_acm_certificate
- aws_s3_bucket x 2 (one for logs, one for website)
- aws_s3_bucket_policy
- aws_cloudfront_origin_access_identity
- aws_cloudfront_distribution
- aws_route53_record

## Inputs
- see variables.tf

## Outputs
- none

## Example
```
provider "aws" {
  region     = "us-east-1"
}

module "my_website" {
  source = "git::https://gitlab.standardbank.co.za/chops/terraform/terraform_/aws_static_website.git"

  website_name = "my-personal-website"
  website_url = "mywebsite.co.za"
  website_root_domain = "mywebsite.co.za"
  prefix = "personal"
  website_owner = "Bob Smith"
}
```

Note: Region has to be us-east-1 as cloudfront uses certificates from this region. Doesn't make a difference to performance as Cloudfront, S3 and Route53 are all global.

## Known Issues
Can be slow when running a destroy due to how long it takes to tear down cloudfront.
S3 buckets can only be deleted if they are empty. Make sure you have deleted all contents from your S3 buckets (both logs and content) before runninga destroy.


## Author
Module managed by Marcus Talken

## License
Apache 2 Licensed. See LICENSE for full details.
