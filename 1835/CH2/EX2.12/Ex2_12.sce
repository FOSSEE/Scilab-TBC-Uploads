//CHAPTER 2,ILLUSTRATION 12 PAGE 66
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//============================================================================================================================
//INPUT
PI=3.141
e=2.71
D1=1.20//               DIAMETER OF DRIVING SHAFT IN m
D2=.50//                DIAMETER OF DRIVEN SHAFT IN m
C=4//                   CENTRE DISTANCE BETWEEN THE SHAFTS IN m
M=.9//                  MASS OF BELT PER METRE LENGTH IN kg
Tmax=2000//             MAX TENSION IN N
U=.3//                  COEFFICIENT OF FRICTION
N1=200//                SPEED  OF DRIVING SHAFT IN rpm
N2=450//                SPEED OF DRIVEN SHAFT IN rpm
//==============================================================================================================================
//CALCULATION
V=PI*D1*N1/60//         VELOCITY OF BELT IN m/s
Tc=M*V^2//              CENTRIFUGAL TENSION IN N
T1=Tmax-Tc//            TENSION ON TIGHTSIDE IN N
F=(D1-D2)/(2*C)
ALPHA=asind(F)
THETA=(180-(2*ALPHA))*PI/180//   ANGLE OF CONTACT IN radians
T2=T1/(e^(U*THETA))//            TENSION ON SLACK SIDE IN N
TL=(T1-T2)*D1/2//                TORQUE ON THE SHAFT OF LARGER PULLEY IN N-m
TS=(T1-T2)*D2/2//                TORQUE ON THE SHAFT OF SMALLER PULLEY IN N-m
P=(T1-T2)*V/1000//               POWER TRANSMITTED IN kW
Pi=2*PI*N1*TL/60000//            INPUT POWER
Po=2*PI*N2*TS/60000//            OUTPUT POWER
Pl=Pi-Po//                       POWER LOST DUE TO FRICTION IN kW
n=Po/Pi*100//                    EFFICIENCY OF DRIVE IN %
//==================================================================================================================================
//OUTPUT
printf('\nTORQUE ON LARGER SHAFT =%f N-m',TL)
printf('\nTORQUE ON SMALLER SHAFT =%f N-m',TS)
printf('\nPOWER TRANSMITTED =%f kW',P)
printf('\nPOWER LOST DUE TO FRICTION =%f kW',Pl)
printf('\nEFFICIENCY OF DRINE =%f percentage',n)
