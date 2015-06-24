//To find revolutions of arm
clc
//Given:
TA=40, TD=90
//Solution:
//Calculating the number of teeth on gears B and C
//From geometry of the Fig. 13.11, dA+2*dB=dD.
//Since the number of teeth are proportional to their pitch circle diameters,
TB=(TD-TA)/2
TC=TB
//Refer Table 13.6
//Speed of arm when A makes 1 revolution clockwise and D makes half revolution anticlockwise:
//Calculating the values of x and y
//From the fourth row of the table, -x-y = -1, or x+y = 1                            .....(i)
//The gear D makes half revolution anticlockwise, i.e., x*(TA/TD)-y = 1/2            .....(ii)
A=[1 1; TA/TD -1]
B=[1; 1/2]
V=A \ B
x=V(1)
y=V(2)
//Calculating the speed of arm
varm=-y //Speed of arm, revolutions
//Results:
printf("\n\n Speed of arm when A makes 1 revolution clockwise and D makes half revolution anticlockwise = %.2f revolution anticlockwise.\n\n",varm)
//Speed of arm when A makes 1 revolution clockwise and D is stationary:
//Calculating the values of x and y
//From the fourth row of the table, -x-y = -1, or x+y = 1                            .....(iii)
//The gear D is stationary, i.e., x*(TA/TD)-y = 0                                    .....(iv)
A=[1 1; TA/TD -1]
B=[1; 0]
V=A \ B
x=V(1)
y=V(2)
//Calculating the speed of arm
varm=-y //Speed of arm, revolutions
//Results:
printf(" Speed of arm when A makes 1 revolution clockwise and D is stationary = %.3f revolution clockwise.\n\n",-varm)