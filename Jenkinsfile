String appImageName = 'my-test-app'
String registryNameSpace = 'my-nexus-registry-namespace'
String realeaseVersion = 1.0.0
String nexusCreds = 'my-nexus-creds-id'
String apaasCreds = 'my-openshift-creds-id'
String dxApaasProjectId = 'minzdravumer-dev'

pipeline {
    agent any
    environment {
        MYAPP_PROJECT_NAME = "$appImageName"
        MYAPP_REGISTRY_PROJECT = "$registryNameSpace"
        REALEAS_VERSION = "$realeaseVersion"
        MYAPP_SYSTEMACCOUNT_CREDENTIALS_KEY = "$nexusCreds"
        MYAPP_OPENSHIFT_PROJECT_ID = "$dxApaasProjectId"
    }
    stages {
        stage('Cleanup and checkout scm') {
            steps {
                deleteDir()
                checkout scm
            }
        }

        stage('Docker build') {
            sh "docker --version"
        }
    }
}