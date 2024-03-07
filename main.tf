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

resource "aws_s3_bucket" "resourcely-asd_qkV23Ls3ZsAwxTiB" {
  bucket = "resourcely-asd"
}

resource "aws_s3_bucket_public_access_block" "resourcely-asd_qkV23Ls3ZsAwxTiB" {
  bucket                  = aws_s3_bucket.resourcely-asd_qkV23Ls3ZsAwxTiB.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-asd_qkV23Ls3ZsAwxTiB" {
  bucket = aws_s3_bucket.resourcely-asd_qkV23Ls3ZsAwxTiB.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-asd_qkV23Ls3ZsAwxTiB" {
  bucket = aws_s3_bucket.resourcely-asd_qkV23Ls3ZsAwxTiB.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "resourcely-asd_qkV23Ls3ZsAwxTiB" {
  bucket = aws_s3_bucket.resourcely-asd_qkV23Ls3ZsAwxTiB.id

  rule {
    id     = "transition-to-glacier"
    status = "Enabled"

    filter {
    }

    transition {
      days          = 123
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
