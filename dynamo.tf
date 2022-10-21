resource "aws_dynamodb_table" "dynamodb-dev" {
    name = "GameScores"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "UserId"
    range_key = "GameTitle"

    attribute {
        name = "UserId"
        type = "S"
    }

    attribute {
        name = "GameTitle"
        type = "S"
    }
}
