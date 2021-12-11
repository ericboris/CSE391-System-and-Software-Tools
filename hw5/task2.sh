#!/bin/bash

####################################
# Name: <Your name here>
# CSE 391 - Autumn 2019
# Homework 5 - Task 2
####################################

function problem4 {
  # Type your answer to problem #1 below this line
  mkdir HW5Output && javac Fresh.java && java Fresh > HW5Output/output.txt
}

function problem5 {
  # Type your answer to problem #2 below this line
  cat "box input.txt" | java Box A >> boxoutput.txt
}

function problem6a {
  # Type your answer to problem #3b below this line
  touch $(id -un)
}

function problem6b {
  # Type your answer to problem #3b below this line
  touch $(id -un).txt
}

function problem7a {
  # Type your answer to problem #3b below this line
  yes y | java Questions
}

function problem7b {
  # Type your answer to problem #3b below this line
  yes n | java Questions
}

function problem8 {
  # Type your answer to problem #3b below this line
  javac $(ls -R *.java)
}

function problem9 {
  # Type your answer to problem #3b below this line
}
