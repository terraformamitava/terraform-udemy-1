pipeline{
    agent any    
        environment {
                    PATH = "${PATH}:${getTerraformpath()}"
                }
        stages{
            stage('terraform init and apply - Dev'){
                steps{
                    sh "sh returnStatus: true, script: 'terraform workspace new dev'"
                    sh "terraform init"
                    sh "terraform apply --var-file=dev.tfvars"
                }
            }
             stage('terraform init and apply - Prod'){
                steps{
                    sh "sh returnStatus: true, script: 'terraform workspace new prod'"
                    sh "terraform init"
                    sh "terraform apply --var-file=prod.tfvars"
                }
            }                       
        }
}

def getTerraformpath(){
    def tfHome = tool name: 'Terraform145', type: 'terraform'
    return tfHome
}