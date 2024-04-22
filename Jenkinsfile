    pipeline {
    agent any

    stages {


         stage('build'){
      steps {
        sh 'sudo docker build -t calculator-app .'
      }
    }
    stage('run'){
      steps{
        sh 'sudo docker run -p 4201:4200 calculator-app'
      }
    }
    }
}
