node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
    stage('adding parameter') {
                build job: 'centos-parameter', parameters: [[$class: 'StringParameterValue', name: 'centos_variable', value: "going outside"]]

    }
}
 