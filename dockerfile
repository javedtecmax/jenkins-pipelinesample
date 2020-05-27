node {
    stage('parameter') {
        echo "building new parameter"
    }
    stage('hello world') {
        sh 'hello world'
    }
}
