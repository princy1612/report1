import groovy.json.*


def SERVICE_NAME = 'madelyn-test'
def BRANCH_NAME = "${env.BRANCH_NAME}".replaceFirst(/^release\//){''}
def TAG = "${BRANCH_NAME}_${env.BUILD_NUMBER}"
def IMAGE_NAME = "${SERVICE_NAME}:${TAG}-E2E"


pipeline {
  agent {
   label 'cje-slaves-lc3-dighmadelyne-dmz'
 }



   triggers {
    cron('H 0 * * *')
   }


options {
    //ansiColor('xterm')
    buildDiscarder(logRotator(numToKeepStr: '5', artifactDaysToKeepStr: '10'))
    //timestamps()
}


    environment {
    GENERATE_REPORTS = 'true'
    }


  stages {
   stage ('E2E') {
      steps {
        sh """
        echo GENERATE_REPORTS is set to $GENERATE_REPORTS
          chmod +x ./mobiletest.sh
         bash -e ./mobiletest.sh
        """
      }
   }
  }
}









