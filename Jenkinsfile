    pipeline {
    agent any

    stages {

         stage('Dockerize'){
      steps {
        sh 'sudo docker build -t calculator-app .'
      }
    }
    stage('Run Container'){
      steps{
        sh 'sudo docker run -d -p 4201:4200 calculator-app'
      }
    }
    }
}
