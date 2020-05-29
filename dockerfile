node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
    stage('adding parameter') {
                build job: 'centos-parameter','centos-parameter1','centos-parameter2','centos-parameter3','centos-parameter4'
                 parameters: [[$class: 'StringParameterValue', 
                 name: 'centos_variable','ansible_variable','docker_variable','miniqube_variable','git_variable',
                 value: "adding all parametrs together"]]

    }
}
 