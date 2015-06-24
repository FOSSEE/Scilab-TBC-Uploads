//To find speed, direction and torque
clc
//Given:
TA=14, TC=100
r=98/41 //TE/TD
PA=1.85*1000 //W
NA=1200 //rpm
//Solution:
//Refer Fig. 13.28 and Table 13.23
//Calculating the number of teeth on wheel B
TB=(TC-TA)/2
//Calculating the values of x and y
//From the fourth row of the table, -y+x*(TA/TC) = 0, or x*(TA/TC)-y = 0    .....(i)
//Also, -x-y = 1200, or x+y = -1200                                         .....(ii)
A=[TA/TC -1; 1 1]
B=[0; -1200]
V=A \ B
x=V(1)
y=V(2)
//Calculating the speed of gear E
NE=round(-y+x*(TA/TB)*(1/r)) //rpm
//Fixing torque required at C:
//Calculating the torque on A
Ta=PA*60/(2*%pi*NA) //Torque on A, N-m
//Calculating the torque on E
Te=PA*60/(2*%pi*NE) //Torque on E
//Calculating the fixing torque required at C
Tc=Te-Ta //Fixing torque at C, N-m
//Results:
printf("\n\n Speed and direction of rotation of gear E, NE = %d rpm, anticlockwise.\n\n",NE)
printf(" Fixing torque required at C = %.1f N-m.\n\n",Tc)