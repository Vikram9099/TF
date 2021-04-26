resource "aws_instance" "jenkins" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name = "Packer"
  

  connection {
    type = "ssh"
    user = "ec2-user"
    host = "${aws_instance.jenkins.public_ip}" 
    private_key = "${file("./Packer.pem")}"
  }

    // provisioner  "remote-exec" {
    //       inline = ["sudo yum update –y",
    //                 "sudo wget -O /etc/yum.repos.d/jenkins.repo \n https://pkg.jenkins.io/redhat-stable/jenkins.repo",
    //                 "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
    //                 "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
                    
    //                 "sudo systemctl start jenkins",
    //                 "sudo systemctl status jenkins"]
    // }
    
  
  tags = {
    Name = "Jenkins"
  }
}
// resource "aws_instance" "jenkins_node1" {
//   ami           = var.AMIS[var.AWS_REGION]
//   instance_type = "t2.micro"
//   key_name = "Packer"
  

//   connection {
//     type = "ssh"
//     user = "ec2-user"
//     host = "${aws_instance.jenkins_node1.public_ip}" 
//     private_key = "${file("./packer.pem")}"
//   }

//     provisioner  "remote-exec" {
//           inline = ["sudo yum list installed | grep -i python3",
//                     "sudo sudo yum install python3 -y" ]
//     }
  
//   tags = {
//     Name = "jenkins_node1"
//   }
// }
// data "aws_vpc" "default" {
//   default = "true"
// }
