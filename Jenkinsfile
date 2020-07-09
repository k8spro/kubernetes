node() {

try {
          stage('build image') {
        app = docker.build("ravali81/kubernetes:docker${env.BUILD_NUMBER}")
       }
   
          stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
          Pushing multiple tags is cheap, as all the layers are reused. /
        docker.withRegistry('https://registry.hub.docker.com', 'Docker-sai') {
            app.push("docker${env.BUILD_NUMBER}")
           
         }
          }
}
    
   stage('Deploy to k8s') {
        sh " kubectl set image sai/frontend apache=docker${env.BUILD_NUMBER} "
   }
  
   delivery.artifactory()
        
       
  }
  catch (e) {
      currentBuild.result = "FAILED"
      throw e
    }
}