//To find angular velocities
clc
//Given:
TA=12, TB=30, TC=14
NA=1, ND=5 //rps
//Solution:
//Number of teeth on wheels D and E:
//Calculating the number of teeth on wheel E
TE=TA+2*TB
//Calculating the number of teeth on wheel E
TD=TE-(TB-TC)
//Magnitude and direction of angular velocities of arm OP and wheel E:
//Calculating the values of x and y
//From the fourth row of Table 13.10, -x-y = -1, or x+y = 1            .....(i)
//Also, x*(TA/TB)*(TC/TD)-y = 5                                        .....(ii)
A=[1 1; (TA/TB)*(TC/TD) -1]
B=[1; 5]
V=A \ B
x=V(1)
y=V(2)
//Calculating the angular velocity of arm OP
omegaOP=-y*2*%pi //Angular velocity of arm OP, rad/s
//Calculating the angular velocity of wheel E
omegaE=(x*TA/TE-y)*2*%pi //Angular velocity of wheel E, rad/s
//Results:
printf("\n\n Number of teeth on wheel E, TE = %d.\n\n",TE)
printf(" Number of teeth on wheel D, TD = %d.\n\n",TD)
printf(" Angular velocity of arm OP = %.3f rad/s, counter clockwise.\n\n",omegaOP)
printf(" Angular velocity of wheel E = %.2f rad/s, counter clockwise.\n\n",omegaE)