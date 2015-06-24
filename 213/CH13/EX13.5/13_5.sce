//To find speed of gear C
clc
//Given:
TB=75, TC=30, TD=90
NA=100 //rpm, clockwise
//Solution:
//Refer Table 13.3
//Calculating the number of teeth on gear E
TE=TC+TD-TB
//Calculating the speed of gear C
y=-100
x=y*(TB/TE)
NC=y-x*(TD/TC) //rpm
//Results:
printf("\n\n Speed of gear C, NC = %d rpm, anticlockwise.\n\n",NC)