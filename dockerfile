node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'echo hello world'
    }
}
