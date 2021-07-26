pipeline {
    agent any 
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    }
    options { timestamps () }
    stages {
        stage('terraform init') {
            steps {
                echo " terraform init"
                  sh "terraform init"
                
            }
        }
        stage('terraform plan ') {
            steps {
                echo "Hello ${params.PERSON}"
                echo "terraform plan"
                sh "terraform plan"
                
            }
        }
        stage('terraform apply ') {
            steps {
                echo "Hello ${params.PERSON}"
                echo "terraform apply"
                sh "terraform apply -auto-approve"
                
            }
        }
    }
}
