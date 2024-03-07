resource "aws_s3_bucket" "resourcely-test_m9x6jDJtmwyscVGS" {
  bucket = "resourcely-test"
}

resource "aws_s3_bucket_public_access_block" "resourcely-test_m9x6jDJtmwyscVGS" {
  bucket                  = aws_s3_bucket.resourcely-test_m9x6jDJtmwyscVGS.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-test_m9x6jDJtmwyscVGS" {
  bucket = aws_s3_bucket.resourcely-test_m9x6jDJtmwyscVGS.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-test_m9x6jDJtmwyscVGS" {
  bucket = aws_s3_bucket.resourcely-test_m9x6jDJtmwyscVGS.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "resourcely-test_m9x6jDJtmwyscVGS" {
  bucket = aws_s3_bucket.resourcely-test_m9x6jDJtmwyscVGS.id

  rule {
    id     = "transition-to-glacier"
    status = "Enabled"

    filter {
    }

    transition {
      days          = 23
      storage_class = "GLACIER"
    }
  }

  rule {
    id     = "abort-multipart-upload"
    status = "Enabled"

    filter {
    }

    abort_incomplete_multipart_upload {
      days_after_initiation = 7
    }
  }
}

resource "azurerm_resource_group" "asd_2xdM4g7xhTBbTqVM" {
  name     = "asd"
  location = "Australia Southeast"
}

resource "azurerm_storage_account" "asd_2xdM4g7xhTBbTqVM" {
  name                     = "asd"
  resource_group_name      = azurerm_resource_group.asd_2xdM4g7xhTBbTqVM.name
  location                 = azurerm_resource_group.asd_2xdM4g7xhTBbTqVM.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "asd_2xdM4g7xhTBbTqVM" {
  name                  = "asd"
  storage_account_name  = azurerm_storage_account.asd_2xdM4g7xhTBbTqVM.name
  container_access_type = "container"
}
