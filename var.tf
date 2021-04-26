variable "AWS_ACCESS_KEY" {

}
variable "AWS_SECRET_KEY" {

}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-038f1ca1bd58a5790"
    us-west-2 = "ami-07a0844029df33d7d"
    eu-west-1 = "ami-079d9017cb651564d"
  }
}