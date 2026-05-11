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
        stage('Comprobar entorno') {
            steps {
                echo 'Comprobando entorno de Jenkins...'
                sh 'whoami'
                sh 'pwd'
                sh 'ls -la'
                sh 'docker --version'
                sh 'docker info'
            }
        }
        stage('Construir Imagen Docker (Build)') {
            steps {
                echo 'Construyendo el contenedor seguro...'
                sh 'docker build -t mi-app-segura:latest .'
            }
        }
        stage('Verificar Imagen') {
            steps {
                echo 'Verificando que la imagen se ha creado...'
                sh 'docker images | grep mi-app-segura'
            }
        }
    }
}
       