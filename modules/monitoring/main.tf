resource "aws_cloudwatch_metric_alarm" "ec2_public_cpu" {
     alarm_name               = "${var.namespace}-public-cpu-utilization"
     comparison_operator       = "GreaterThanOrEqualToThreshold"
     evaluation_periods       = "2"
     metric_name               = "CPUUtilization"
     namespace                 = "AWS/EC2"
     period                   = "120" #seconds
     statistic                 = "Average"
     threshold                 = "80"
   alarm_description         = "This metric monitors ec2 cpu utilization"
     insufficient_data_actions = []

dimensions = {

       InstanceId = var.public_id

     }

}

resource "aws_cloudwatch_metric_alarm" "ec2_private_cpu" {
     alarm_name               = "${var.namespace}-private-cpu-utilization"
     comparison_operator       = "GreaterThanOrEqualToThreshold"
     evaluation_periods       = "2"
     metric_name               = "CPUUtilization"
     namespace                 = "AWS/EC2"
     period                   = "120" #seconds
     statistic                 = "Average"
     threshold                 = "80"
   alarm_description         = "This metric monitors ec2 cpu utilization"
     insufficient_data_actions = []

dimensions = {

       InstanceId = var.private_id

     }

}