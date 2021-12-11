#!/bin/bash

####################################
# Name: Eric Boris
# CSE 391 - Autumn 2019
# Homework 4 - Task 1
####################################

function problem1 {
  # Type your answer to problem #1 below this line
  sed 's/ /-/g' email.txt
}

function problem2 {
  # Type your answer to problem #2 below this line
  sed -E 's/kit[ ]?kat[s]?/kitkat/g' candies.txt
}

function problem3 {
  # Type your answer to problem #3 below this line
  sed -E 's/:\(/:)/g' boundless.txt
}

function problem4 {
  # Type your answer to problem #4 below this line
  sed -E 's/([a-zA-Z]+) ([0-9]+)([,])/\2 \1/g' dates.txt
}

function problem5 {
  # Type your answer to problem #5 below this line
  sed -E 's/([0-9]{3}-[0-9]{2})([0-9]{1})-([0-9]{4})/x\2\3/g' phone.txt
}

function problem6 {
  # Type your answer to problem #6 below this line
  sed -E 's/([a-zA-Z-]*),[ ]*([a-zA-Z-]*)[ ]*([0-9]{3}-[0-9]{2})([0-9]{1})-([0-9]{4})/x\4\5   \1,\2/g' phone.txt
}
