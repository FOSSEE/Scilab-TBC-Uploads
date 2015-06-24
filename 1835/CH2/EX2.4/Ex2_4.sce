//CHAPTER 2,ILLUSTRATION 4 PAGE 59
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//====================================================================================
//INPUT
D1=.5//            DIAMETER OF 1ST SHAFT IN m
D2=.25//           DIAMETER OF 2nd SHAFT IN m
C=2//              CENTRE DISTANCE IN m
N1=220//           SPEED OF 1st SHAFT
T1=1250//          TENSION ON TIGHT SIDE IN N
U=.25//            COEFFICIENT OF FRICTION
PI=3.141
e=2.71
//====================================================================================
//CALCULATION
L=(D1+D2)*PI/2+((D1+D2)^2/(4*C))+2*C
F=(D1+D2)/(2*C)
ALPHA=asind(F)
THETA=(180+(2*ALPHA))*PI/180//   ANGLE OF CONTACT IN radians
T2=T1/(e^(U*THETA))//            TENSION ON SLACK SIDE IN N
V=PI*D1*N1/60//                   VELOCITY IN m/s
P=(T1-T2)*V/1000//                POWER IN kW
//====================================================================================
//OUTPUT
printf('\nLENGTH OF BELT REQUIRED =%f m',L)
printf('\nANGLE OF CONTACT =%f radians',THETA)
printf('\nPOWER CAN BE TRANSMITTED=%f kW',P)
