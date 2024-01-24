node{

    stage('code checkout'){
        git credentialsId: 'GitHubToken', url: 'https://github.com/ChandanTeekinavar/php-registration-form.git'
    }
    
    stage ('containerize'){
        sh 'docker build -t chandanteekinavar/php-registration-form:1.0 .'
    }
    
    stage('push to dockerhub'){
        withCredentials([string(credentialsId: 'DockerHubPassword', variable: 'DockerHubPassword')]) {
        sh "docker login -u chandanteekinavar -p ${DockerHubPassword}"
        sh 'docker push chandanteekinavar/php-registration-form:1.0'
        }
    }
    
    stage('deploy'){
        ansiblePlaybook become: true, credentialsId: 'demo-key.pem', disableHostKeyChecking: true, installation: 'Ansible', inventory: '/etc/ansible/hosts', playbook: 'playbook.yml', vaultTmpPath: ''
    }
    
}
