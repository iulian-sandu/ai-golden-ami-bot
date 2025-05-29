resource "aws_s3_bucket" "state" {
  bucket = format("my-golden-ai-terraform-state-bucket-%s", random_id.sufix.hex)
}

resource "random_id" "sufix" {
  byte_length = 4
}