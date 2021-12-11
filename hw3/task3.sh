#!/bin/bash

####################################
# Name: Eric Boris
# CSE 391 - Autumn 2019
# Homework 3 - Task 3
####################################

function problem10 {
  # Type your answer to problem #10 below this line
  egrep -i '^([\$]|[_]|[-]|[a-z]|[A-Z])+(([a-z]|[A-Z]|[0-9]|[_]|[\$])?)' vars.txt
  egrep -i '^[a-z_$]' vars.txt
}

function problem11 {
  # Type your answer to problem #11 below this line
  egrep -i '({ })*(public|private)( static)?( )(int|char|String|float|double|void|boolean)' PointProgram.java

}
