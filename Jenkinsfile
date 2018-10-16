node('docker-slave') {
    def app

    stage('Checkout') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build('hlaf/jenkins-withdocker')
    }

    stage('Push image') {
        /* Push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
