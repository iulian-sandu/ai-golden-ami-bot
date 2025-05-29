resource "aws_iam_role" "github" {
  name = "github-oidc-assume-iac-role"

  assume_role_policy = file("oidc-iam-assume-policy.json")

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy_attachment" "github" {
  role       = aws_iam_role.github.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}