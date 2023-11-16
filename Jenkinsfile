node {
    stage("Preparation"){
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
        sh 'export PATH=/usr/local/bin:$PATH'
    }   
    stage("Clone and build"){
      sh 'rm -rf MEP-2'
        sh 'git clone https://github.com/NIFr3d/MEP-2'
        withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
            sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
        }
        sh 'docker build -t nifr3d/mep2 ./MEP-2'
        sh 'docker push nifr3d/mep2:latest'
    }
    
}