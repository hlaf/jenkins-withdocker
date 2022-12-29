
image_name = 'hlaf/jenkins-withdocker'

node('docker-slave') {
    def app

    stage('Checkout') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build(image_name)
    }

    stage('Push image') {
        // Tag the image with the incremental build number from Jenkins
        //docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
        //    app.push("${env.BUILD_NUMBER}")
        //}
    }
}
