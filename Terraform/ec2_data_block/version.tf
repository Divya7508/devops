terraform {
    required_version = "~>1.6.6"

    #version of provider
    # required_providers {
    #   aws = {
    #     version = "~>5.17.0"
    #   }
    # }

        backend "s3" {
        bucket = "s3-ilkal"      #s3-backend-terraform-project-1
        key    = "main/data_block/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "s3-tumkur-locking-table"  #s3-backend-locking-table
    }
}
