pipeline {
  def app
  agent any
  stages 
    {
    stage('Clean') {
      steps {
        sh 'mvn clean'
      }
    }
    stage('Compile') {
      steps {
        sh 'mvn compile'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Clone repository') {
       /* Let's make sure we have the repository cloned to our workspace */
         checkout scm
    }
    stage('Build image') {
      /* This builds the actual image; synonymous to
       * docker build on the command line */
        //sh 'sudo service docker start'
          app = docker.build("shikha02/calculator")
    }
      
   stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
