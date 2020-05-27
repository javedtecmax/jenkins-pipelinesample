node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
    stage('adding parameter') {
        build job: 'centos-parameter', parameters: [[$class: 'stringparametervalue', name: 'cantos_variable', value: "hi good evening"]]
    }
}
 