//To find teeth and speed
clc
//Given:
TC=28, TD=26, TE=18, TF=TE
//Solution:
//The sketch is as in Fig. 13.12
//Number of teeth on  wheels A and B:
//From geometry, dA = dC+2*dE, and dB = dD+2*dF
//Since the number of teeth are proportional to their pitch circle diameters,
TA=TC+2*TE
TB=TD+2*TF
//Speed of wheel B when arm G makes 100 rpm clockwise and wheel A is fixed:
//Since the arm G makes 100 rpm clockwise, therefore from the fourth row of Table 13.7,
y=-100
x=-y
//Calculating the speed of wheel B
NB1=y+x*(TA/TC)*(TD/TB) //Speed of wheel B when arm G makes 100 rpm clockwise and wheel A is fixed, rpm
//Speed of wheel B when arm G makes 100 rpm clockwise and wheel A makes 10 rpm counter clockwise:
//Since the arm G makes 100 rpm clockwise, therefore from the fourth row of Table 13.7,
y=-100
x=10-y
//Calculating the speed of wheel B
NB2=y+x*(TA/TC)*(TD/TB) //Speed of wheel B when arm G makes 100 rpm clockwise and wheel A makes 10 rpm counter clockwise, rpm
//Solution:
printf("\n\n Number of teeth on  wheel A, TA = %d.\n\n",TA)
printf(" Number of teeth on  wheel B, TB = %d.\n\n",TB)
printf(" Speed of wheel B when arm G makes 100 rpm clockwise and wheel A is fixed = %.1f rpm, clockwise.\n\n",-NB1)
printf(" Speed of wheel B when arm G makes 100 rpm clockwise and wheel A makes 10 rpm counter clockwise = %.1f rpm, counter clockwise.\n\n",NB2)