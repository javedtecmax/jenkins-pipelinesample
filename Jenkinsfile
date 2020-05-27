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
           }
      }
