node {
  def app
  //agent any
    stage('Clone Repository') {
        checkout scm
    }
    stage('Clean') {
        sh 'mvn clean'
    }
    stage('Package') {
        sh 'mvn package'
    }
    stage('Test') {
        sh 'mvn test'
    }
    stage('Build Image') {
         app=docker.build("shikha02/calculator")
      }
    stage('Push image')
      {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("calculator${env.BUILD_NUMBER}")
            app.push("latest")
        }
      }
  stage('Deploy on Node')
    {
        step([
            $class: "RundeckNotifier",
            rundeckInstance: "rundeck",
            jobId: "7ca91b5b-bfb5-42ee-a625-a1e75de5cbce",
            includeRundeckLogs: true,
            shouldWaitForRundeckJob: true,
            shouldFailTheBuild: true,
            tailLog: true
        ])
    }
}
