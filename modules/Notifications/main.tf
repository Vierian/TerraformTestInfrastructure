

resource "aws_sns_topic" "CPU_Notification" {
  name = "${var.namespace}-CPU-topic"
}

resource "aws_sns_topic_subscription" "CPU_Notification_target" {
  topic_arn = aws_sns_topic.CPU_Notification.arn
  protocol  = "email"
  endpoint  = var.email
}