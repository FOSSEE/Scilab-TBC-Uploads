//To find speed of shaft
clc
//Given:
TB=80, TC=82, TD=28
NA=500 //rpm
//Solution:
//Calculating the number of teeth on wheel E
TE=TB+TD-TC
//Calculating the values of x and y
y=800
x=-y*(TE/TB)*(TC/TD)
//Calculating the speed of shaft F
NF=x+y //Speed of shaft F, rpm
//Results:
printf("\n\n Speed of shaft F = %d rpm, anticlockwise.\n\n",NF)