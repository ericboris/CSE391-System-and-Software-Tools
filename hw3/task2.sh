#!/bin/bash

####################################
# Name: Eric Boris
# CSE 391 - Autumn 2019
# Homework 3 - Task 2
####################################

function problem3 {
  # Type your answer to problem #3 below this line
  egrep -i -v '[^acgt]' dna.txt
}

function problem4 {
  # Type your answer to problem #4 below this line
  egrep -i '[^acgt]' dna.txt
}

function problem5 {
  # Type your answer to problem #5 below this line
  egrep -i -x '([actg][actg][actg]){3,}' dna.txt
}

function problem6 {
  # Type your answer to problem #6 below this line
  egrep -i "^ATG([ACGT]{3}){3,}(TAA|TAG|TGA)$" dna.txt
}

function problem7 {
  # Type your answer to problem #7 below this line
  egrep -i -B 1 'cat+[acgt]' dna.txt
}

function problem8 {
  # Type your answer to problem #8 below this line
  grep -E -o "(...)" dna.txt | egrep -i -o "CAT"  | wc -l
}

function problem9 {
  # Type your answer to problem #9 below this line
  egrep -i -x "^(([actgACTG][actgACTG][actgACTG]){3,})\1$" dna.txt
  egrep -i "^([actg]{3,})\1$" dna.txt
}
