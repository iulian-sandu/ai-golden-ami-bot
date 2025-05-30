resource "aws_iam_openid_connect_provider" "default" {
  url            = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]
}

resource "aws_iam_role" "github" {
  name = "github-oidc-assume-iac-role"

  assume_role_policy = file("oidc-policy.json")

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy_attachment" "github" {
  role       = aws_iam_role.github.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
