    pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from SCM
                git 'https://github.com/Madhunicka/4051-Madhunicka'
            }
        }

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
