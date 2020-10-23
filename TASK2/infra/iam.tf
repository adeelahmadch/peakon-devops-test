resource "aws_iam_user" "fake-product" {

  name          = "fake-product"
  path          = "/"
}

resource "aws_iam_user_policy" "fake-product" {
  user  = aws_iam_user.fake-product.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:AbortMultipartUpload",
                "s3:GetObject",
                "s3:ListMultipartUploadParts",
                "s3:PutObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "${aws_s3_bucket.bucket.arn}/*",
                "${aws_s3_bucket.bucket.arn}"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "s3:HeadBucket",
            "Resource": "*"
        }
    ]
}
EOF
}

######

resource "aws_iam_user" "emma" {
  name = "emma"
}

resource "aws_iam_user_policy_attachment" "emma" {
  user       = aws_iam_user.emma.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user" "liam" {
  name = "liam"
}

resource "aws_iam_user_policy_attachment" "liam" {
  user       = aws_iam_user.liam.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}