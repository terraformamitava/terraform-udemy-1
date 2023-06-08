pipeline{
    agent any 
    environment{
        environment {
                    PATH = "${PATH}:${getTerraformpath()}"
                }
    }
        stages{
            stage('terraform init'){
                steps{
                    sh "terraform init"
                }
            }                   
        }
}

def getTerraformpath(){
    def tfHome = tool name: 'Terraform145', type: 'terraform'
    return tfHome
}