//Chapter 08: Advanced Counting Techniques

clc;
clear;

no_freshmen=1807;.........//total no if freshmen
no_cs=453;                //no of students taking course in computer science
no_math=567;                //no of students taking course in mathematics
no_csmath=299;                //no of students taking course in computer science and mathematics

AUB=no_cs+no_math-no_csmath

csmath=no_freshmen-AUB

mprintf("No.of freshmen taking a course in computer science or math is %d",AUB)
mprintf("\n No.of freshmen not taking a course in either computer science or math is %d",csmath)
