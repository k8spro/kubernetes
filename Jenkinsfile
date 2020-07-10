node() {
stage('SCM') {
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '498a5710-2f8a-4522-ab67-9f415d370965', url: 'https://github.com/k8spro/kubernetes.git']]])
}

          stage('build image') {
        app = docker.build("ravali81/kubernetes:docker${env.BUILD_NUMBER}")
       }
   
          stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'Docker-sai') {
            app.push("docker${env.BUILD_NUMBER}")
           
         }
          }
    
   stage('Deploy to k8s') {
        
        sh " kubectl set image deployment/sai httpd=ravali81/kubernetes:docker${env.BUILD_NUMBER} "
   }
  
}
