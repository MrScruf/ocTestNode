pipeline {
	//Vyber agenta pro spuštění, zde je to label custom docker agenta definovaného pomocí docker cloud
    agent any
    //Steges se pouští postupně 
    stages {
        stage('Build') {
        	//Každá stage může mít zadefinovaného jiného agenta
        	/*agent {
    			label "dockerSlave"
    		}*/
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }
        stage('Test'){
            steps{
                echo "Testuju vole"
            }
        }
    }

     post {
    	//Pokaždé
        always {
            echo "Pipeline skončila"
        }
        //Při neúspěchu
        failure {
        	echo "Neuspěl jsem"
            //mail to: team@example.com, subject: 'The Pipeline failed :('
        }
    }
}