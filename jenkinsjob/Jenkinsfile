      pipeline {
           agent any
           stages {
                stage("Hello") {
                     steps {
                          echo 'Hello World'
                     }
                }
                stage("jenkins") {
                     steps {
                          sh 'ls'
                      }
                }
                stage("displaytimestamp") {
                     steps {
                          echo "TimeStamp: ${currentBuild.startTimeInMillis}"

                     }
                }
                 
                stage("call jenkins-parameterized") {
                     steps {
                           build job: 'jenkins-parameterized', parameters: [[$class: 'StringParameterValue', name: 'test_var', value: 'javeed' ]]
                     }
                }
                 
           }
      }
