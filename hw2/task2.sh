#!/bin/bash

####################################
# Name: Eric Boris
# CSE 391 - Autumn 2019
# Homework 2 - Task 2
####################################

function problem6 {
  # Type your answer to problem #6 below this line
  javac ParseColumns.java
}

function problem7 {
  # Type your answer to problem #7 below this line
  java ParseColumns 1 < intro_survey.csv > candies.txt
}

function problem8 {
  # Type your answer to problem #8 below this line
  grep -i chocolate candies.txt
}

function problem9 {
  # Type your answer to problem #9 below this line
  grep -c "I don't like candy" candies.txt
}

function problem10 {
  # Type your answer to problem #10 below this line
  tail -n +2 intro_survey.csv > intro_survey_no_header.csv
}

function problem11 {
  # Type your answer to problem #11 below this line
  wc -l intro_survey_no_header.csv
}

function problem12 {
  # Type your answer to problem #12 below this line
  tail -n 1 intro_survey_no_header.csv | cut -d ',' -f3
}

function problem13 {
  # Type your answer to problem #13 below this line
  cat intro_survey_no_header.csv | cut -d ',' -f1 | sort | uniq -c | sort -nr |  head -3
}

function problem14 {
  # Type your answer to problem #14 below this line
  cat intro_survey_no_header.csv | cut -d ',' -f2 | sort -f | uniq -ci | sort -nr |  head -3
}

function problem15 {
  What are the top ten favorite restaurants?
  # Type your command that answers your question below this line
  cat intro_survey_no_header.csv | cut -d ',' -f3 | sort -f | uniq -ci | sort -nr |  head -10
}
