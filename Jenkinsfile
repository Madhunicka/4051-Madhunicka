    pipeline {
    agent any

    stages {

         stage('Dockerize'){
      steps {
        sh 'docker build -t calculator-app .'
      }
    }
    stage('Run Container'){
      steps{
        sh 'docker run -d -p 4201:4200 calculator-app'
      }
    }
    }
}
