#!/bin/bash

####################################
# Name: Eric Boris
# CSE 391 - Autumn 2019
# Homework 6 - Task 1
####################################

function problem1 {
  # Type your answer to problem #1 below this line
  chmod uo+x example1.txt
}

function problem2a {
  # Type your answer to problem #2a below this line
  chmod u+r-wx,go-rwx $(ls *.java *.txt)
}

function problem2b {
  # Type your answer to problem #2b below this line
  chmod 400 $(ls *.java *.txt)
}

function problem3 {
  # Type your answer to problem #3 below this line
  chown -R wheel $(ls -a)
}

function problem4 {
  # Type your answer to problem #4 below this line
  ls -R *.java | xargs chmod g+r
}

function problem5 {
  # Type your answer to problem #5 below this line
  umask 377
}

function problem6 {
  # Type your answer to problem #6 below this line
  sudo cat password.secret
}

