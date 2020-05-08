node {
  def app
  def registry = "shikha02/spe_calculator"
  def registryCredential = 'DockerHub'
  def dockerImage = ''
  //agent any
    stage('Clone Repository') {
        checkout scm
    }
    stage('Clean') {
        sh 'mvn clean'
    }
    stage('Compile') {
        sh 'mvn compile'
    }
    stage('Test') {
        sh 'mvn test'
    }
    stage('Build Image') {
         dockerImage = docker.build registry + ":$BUILD_NUMBER"
      }
    stage('Push image')
      {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            //app.push("latest")
        }
      }
}
