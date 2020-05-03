pipeline {
   agent any

   environment {
       VULTR_API_KEY = credentials('VULTR-API-KEY')
   }

   stages {
      stage('Terraform Check') {
          steps {
              dir("${env.WORKSPACE}") {
                  sh("/usr/local/bin/terraform init")
                  sh("/usr/local/bin/terraform plan")
              }       
          }
      }

      stage('Check Files') {
          steps {
              sh("ls -ahl")
          }
      }
      
      stage('Proceed?') {
          options {
              timeout(time: 8, unit: 'HOURS')
          }
          input {
              message "Should we continue?"
              ok "Proceed"
          }
          steps { 
              echo "go go go go go!"
          }
      }

      stage('Deploying...') {
          parallel {
              stage('Deploy to Vultr') {
                  steps {
                      sh("/usr/local/bin/terraform destroy -auto-approve")
                    //   sh("/usr/local/bin/terraform apply -auto-approve")
                  }
                  post {
                      success {
                          echo "yo it succeeded!"
                      }
                      failure {
                          echo "it failed dog!"
                      }
                  }
              }
              stage('Deploy to AWS') {
                  steps {
                    //   sh("/usr/local/bin/terraform destroy -auto-approve")
                    //   sh("/usr/local/bin/terraform apply -auto-approve")
                    echo "deployed to aws"
                  }
                  post {
                      success {
                          echo "yo it succeeded!"
                      }
                      failure {
                          echo "it failed dog!"
                      }
                  }
              }
              stage('Deploy to Linode') {
                  steps {
                    //   sh("/usr/local/bin/terraform destroy -auto-approve")
                    //   sh("/usr/local/bin/terraform apply -auto-approve")
                    echo "deployed to azure"
                  }
                  post {
                      success {
                          echo "yo it succeeded!"
                      }
                      failure {
                          echo "it failed dog!"
                      }
                  }
              }
              stage('Deploy to Azure') {
                  steps {
                    //   sh("/usr/local/bin/terraform destroy -auto-approve")
                    //   sh("/usr/local/bin/terraform apply -auto-approve")
                    echo "deployed to azure"
                  }
                  post {
                      success {
                          echo "yo it succeeded!"
                      }
                      failure {
                          echo "it failed dog!"
                      }
                  }
              }
          }
      }
   }
}
    //       steps {
    //           dir("${env.WORKSPACE}") {
    //             parallel {
    //                 stage('Deploying Vultr') {
    //                     sh("whoami")
    //                     sh("/usr/local/bin/terraform destroy -auto-approve")
    //                     // sh("/usr/local/bin/terraform apply -auto-approve")
    //                 }
    //                 stage('Deploying to AWS') {
    //                     echo "deployed to aws"
    //                 }
    //             }
    //         }
    //     }
    // }

//    post {
//        success {
//            echo "yo it succeeded!"
//        }
//        failure {
//            echo "yo this failed!"
//        }
//    }