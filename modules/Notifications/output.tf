output "topic_ARN" {
  description = "Topic"
  value       = aws_sns_topic.CPU_Notification.arn
}