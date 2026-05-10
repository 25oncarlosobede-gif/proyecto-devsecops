pipeline {
    agent any
    stages {
        stage('Descargar Código') {
            steps {
                echo 'Clonando el repositorio desde GitHub...'
                // Cambia esta URL por la tuya
                git branch: 'desarrollo', url: 'https://github.com/25oncarlosobede-gif/proyecto-devsecops.git'
            }
        }
        stage('Instalar Docker') {
            steps {
                sh 'apt-get update && apt-get install -y docker.io'
            }
        }   
        stage('Construir Imagen Docker (Build)') {
            steps {
                echo 'Construyendo el contenedor seguro...'
                sh 'docker build -t mi-app-segura:latest .'
            }
        }
    }
}
       