node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
    stage('parallel stage') {
        parallel {
           stage('adding parameter') {
                build job: 'centos-parameter', parameters: [[$class: 'StringParameterValue', name: 'centos_variable', value: "adding all parametrs together"]]
                    }
            stage('parameter1') {
                build job: 'centos-parameter1', parameters: [[$class: 'StringParameterValue', name: 'ansible_variable', value: "good morning"]]
    }
            stage('parameter2') {
                build job: 'centos-parameter2', parameters: [[$class: 'StringParameterValue', name: 'docker_variable', value: "adding docker variable"]]
    }
            stage('parameter3') {
                build job: 'centos-parameter3', parameters: [[$class: 'StringParameterValue', name: 'miniqube_variable', value: "hello world"]]
    }
            stage('parameter4') {
                build job: 'centos-parameter4', parameters: [[$class: 'StringParameterValue', name: 'git_variable', value: "hi"]]

    } 
           
        }
    }
    }
 