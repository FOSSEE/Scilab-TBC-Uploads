//To find speed of shaft
clc
//Given:
TA=40, TB=30, TC=50
NX=100, NA=NX //rpm
Narm=100 //Speed of arm, rpm
//Solution:
//Refer Fig. 13.22 and Table 13.18
//Calculating the values of x and y
y=+100
x=-100-y
//Calculating the speed of the driven shaft
NY=y-x*(TA/TB) //rpm
//Results:
printf("\n\n Speed of the driven shaft, NY = %.1f rpm, anticlockwise.\n\n",NY)