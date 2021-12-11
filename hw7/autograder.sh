#!/bin/bash

# Set the maximum possible score on the assignment
# If no score is given, present an error and break
MAXPOINTS=$1
if [ -z $MAXPOINTS ]; then
	echo "Usage: ./autograder.sh MAXPOINTS"
	exit 1
fi

# Display the script header 
echo "Retro Grade-It, 1970s version"
echo "Grading with a max score of $MAXPOINTS"
echo ""

# Iterate over each of the students in the student folder
for student in students/*; do
	# Extract the student's name from file path
	# and let the user know what student's assignment
	# is being processed
	IFS='/'
	read -ra filename <<< "$student"
	studentname=${filename[1]}
	IFS=' '	
	echo "Processing $studentname ..."
	
	# Check that the student actually turned in the assignment
	# If they have, get the student's score 
	# and if they haven't, say so and give them a zero
	if [ -f $student/gettysburg.sh ]; then 
		# Store the student's work to a file
		# count the differences between the student's work
		# and what it should have said, count the number
		# of mistakes
		bash $student/gettysburg.sh > output.txt
		diff -w output.txt expected.txt > diff.txt
		count=$(grep -oE "<|>" diff.txt | wc -l | sed 's/^ *//')
	
		# Calculate the student's score as the difference
		# between the maximum points and the number of 
		# mistakes they made
		# if their score would be below zero,
		# increase it back to zero
		let score="$MAXPOINTS - $count*5"
		if [ $score -lt 0 ]; then
			score=0;
		fi
	
		# If the student made any mistakes 
		# display them
		# and display that they made no mistakes
		if [ $count -gt 0 ]; then
			echo "$studentname has incorrect output ($count lines do not match)"
		else	
			echo "$studentname has correct output"
		fi
		echo "$studentname has earned a score of $score / $MAXPOINTS"
	
	# Student didn't turn in an assignment
	# or the assignment had the wrong title
	# Give them a zero
	else
		echo "$studentname did not turn in the assignment"
		echo "$studentname has earned a score of 0 / $MAXPOINTS"		
	fi
	echo ""

done
