//To find speed, direction and torque
clc
//Given:
TP=144, TQ=120, TR=120, TX=36, TY=24, TZ=30
NI=1500 //rpm
P=7.5*1000 //W
eta=0.8
//Solution:
//Refer Fig. 13.30 and Table 13.25
//Calculating the values of x and y
//From the fourth row of the table, x+y = -1500        .....(i)
//Also, y-x*(TZ/TR) = 0, or -x*(TZ/TR)+y = 0           .....(ii)
A=[1 1; -TZ/TR 1]
B=[-1500; 0]
V=A \ B
x=V(1)
y=V(2)
//Calculating the values of x1 and y1
//We have, y1-x1*(TY/TQ) = y                           .....(iii)
//Also, x1+y1 = x+y, or y1+x1 = x+y                    .....(iv)
A=[1 -TY/TQ; 1 1]
B=[y; x+y]
V=A \ B
x1=V(2)
y1=V(1)
//Speed and direction of the driven shaft O and the wheel P:
//Calculating the speed of shaft O
NO=y1 //rpm
//Calculating the speed of wheel P
NP=y1+x1*(TY/TQ)*(TX/TP) //rpm
//Torque tending to rotate the fixed wheel R:
//Calculating the torque on shaft I
T1=P*60/(2*%pi*NI) //N-m
//Calculating the torque on shaft O
T2=eta*P*60/(2*%pi*(-NO)) //N-m
//Calculating the torque tending to rotate the fixed wheel R
T=T2-T1 //Torque tending to rotate the fixed wheel R, N-m
//Results:
printf("\n\n Speed of the driven shaft O, NO = %d rpm, clockwise.\n\n",-NO)
printf(" Speed of the wheel P, NP = %d rpm, clockwise.\n\n",-NP)
printf(" Torque tending to rotate the fixed wheel R = %.2f N-m.\n\n",T)