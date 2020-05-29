node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
    stage('adding parameter') {
                build job: 'centos-parameter', parameters: [[$class: 'StringParameterValue', name: 'centos_variable', value: "adding all parametrs together"]]
                build job: 'centos-parameter1', parameters: [[$class: 'StringParameterValue', name: 'ansible_variable', value: "good morning"]]
                build job: 'centos-parameter2', parameters: [[$class: 'StringParameterValue', name: 'docker_variable', value: "adding docker variable"]]
                build job: 'centos-parameter3', parameters: [[$class: 'StringParameterValue', name: 'miniqube_variable', value: "hello world"]]
                build job: 'centos-parameter4', parameters: [[$class: 'StringParameterValue', name: 'git_variable', value: "hi"]]

    }
}
 