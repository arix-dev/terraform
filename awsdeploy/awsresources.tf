resource "aws_key_pair" "rwadm" {
  key_name   = "rwadm"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCGwB/7LFs88HNxe0sl73vBzQQ8v1XYcgaBfK5NhGXboZUR8nGfQnupzjByjdInPTJCdr5c0fJnooogxyWWx4NNs8wzVjxENcY1u77uAA+K3tC4CFt7lVLUXnuCwgPnRzMTpwHwnP9WLjaSluAp2yeGvWbBEGfvezZLbJSHG01yBxNnK6cIRwwheQCglJ1nRD/De0kSn7CurEL77ILJJ11wfS6vfOQvMhVFTXBrjff7m17sX1L4oYK3+eV8jovA0by60maWMENXefkhb6X13fBGeVwI6yduzgKO4zyY/LQS3p7RiXzSpZwQoTXWtR2I7JjtGh91wOO/DBNdmbUrBmNP"
}

resource "aws_instance" "rwapps1"{
    ami = "ami-2757f631"
    instance_type ="t2.micro"
    key_name = "rwadm"
}