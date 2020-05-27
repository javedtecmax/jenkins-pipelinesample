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
                stage("dockerlogin") {
                     steps {
                          echo "TimeStamp: ${currentBuild.startTimeInMillis}"

                         echo "TimeStamp: ${Util.getTimeSpanString(System.currentTimeMillis())}"
                     }
                }
           }
      }
