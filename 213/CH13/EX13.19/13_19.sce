//To find torque exerted
clc
//Given:
TA=15, TB=20, TC=15
NA=1000 //rpm
Tm=100 //Torque developed by motor, N-m
//Solution:
//Refer Fig. 13.26 and Table 13.21
//Calculating the number of teeth on gears E and D
TE=TA+2*TB
TD=TE-(TB-TC)
//Speed of the machine shaft:
//From the fourth row of the table, x+y = 1000, or y+x = 1000        .....(i)
//Also, y-x*(TA/TE) = 0                                              .....(ii)
A=[1 1; 1 -TA/TE]
B=[1000; 0]
V=A \ B
y=V(1)
x=V(2)
//Calculating the speed of machine shaft
ND=y-x*(TA/TB)*(TC/TD) //rpm
//Calculating the torque exerted on the machine shaft
Ts=Tm*NA/ND //Torque exerted on the machine shaft, N-m
//Results:
printf("\n\n Speed of machine shaft, ND = %.2f rpm, anticlockwise.\n\n",ND)
printf(" Torque exerted on the machine shaft = %d N-m.\n\n",Ts)