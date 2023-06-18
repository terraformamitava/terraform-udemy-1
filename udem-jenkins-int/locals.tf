locals{
  vpc_name = "${terraform.workspace == "dev" ? "devpc":"prodvpc"}"
}