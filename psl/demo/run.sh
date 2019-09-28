#!/bin/bash

readonly PSL_VERSION='2.1.0'
readonly JAR_PATH="/home/dev/psl/psl-cli-2.1.0.jar"
readonly BASE_NAME='simple-acquaintances'

readonly ADDITIONAL_PSL_OPTIONS=''
readonly ADDITIONAL_EVAL_OPTIONS='--infer --eval org.linqs.psl.evaluation.statistics.DiscreteEvaluator'

function main() {
   trap exit SIGINT

   # Run PSL
   runEvaluation
}

function runEvaluation() {
   echo "Running PSL Inference"

   java -jar "${JAR_PATH}" --model "${BASE_NAME}.psl" --data "${BASE_NAME}.data" --output inferred-predicates ${ADDITIONAL_EVAL_OPTIONS} ${ADDITIONAL_PSL_OPTIONS}
   if [[ "$?" -ne 0 ]]; then
      echo 'ERROR: Failed to run infernce'
      exit 70
   fi
}

main "$@"
