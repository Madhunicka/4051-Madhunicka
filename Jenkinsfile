    pipeline {
    agent any

    stages {


         stage('build'){
      steps {
        sh 'docker build -t calculator-app .'
      }
    }
    stage('run'){
      steps{
        sh 'docker run -p 4201:4200 calculator-app'
      }
    }
    }
}
