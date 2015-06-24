//To find torque and forces
clc
//Given:
TA=34, TB=120, TC=150, TD=38, TE=50
PX=7.5*1000 //W
NX=500 //rpm
m=3.5 //mm
//Solution:
//Refer Fig. 13.31 and Table 13.27
//Output torque of shaft Y:
//Calculating the values of x and y
//From the fourth row of the table, x+y = 500, or y+x = 500        .....(i)
//Also, y-x*(TA/TC) = 0                                            .....(ii)
A=[1 1; 1 -TA/TC]
B=[500; 0]
V=A \ B
y=V(1) //rpm
x=V(2) //rpm
//Calculating the speed of output shaft Y
NY=y-x*(TA/TB)*(TD/TE) //rpm
//Calculating the speed of wheel E
NE=NY //rpm
//Calculating the input power assuming 100 per cent efficiency
PY=PX //W
//Calculating the output torque of shaft Y
Ty=PY*60/(2*%pi*NY*1000) //Output torque on shaft Y, kN-m
//Tangential force between wheels D and E:
//Calculating the pitch circle radius of wheel E
rE=m*TE/(2*1000) //m
//Calculating the tangential force between wheels D and E
FtDE=Ty/rE //Tangential force between wheels D and E, kN
//Tangential force between wheels B and C:
//Calculating the input torque on shaft X
Tx=PX*60/(2*%pi*NX) //Input torque on shaft X, N-m
//Calculating the fixing torque on the fixed wheel C
Tf=Ty-Tx/1000 //Fixing torque on the fixed wheel C, kN-m
//Calculating the pitch circle radius of wheel C
rC=m*TC/(2*1000) //m
//Calculating the tangential forces between wheels B and C
FtBC=Tf/rC //kN
//Results:
printf("\n\n Output torque of shaft Y = %.3f kN-m.\n\n",Ty)
printf(" Tangential force between wheels D and E = %.1f kN.\n\n",FtDE)
printf(" Tangential force between wheels B and C = %d kN.\n\n",FtBC)