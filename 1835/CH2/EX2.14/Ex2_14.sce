//CHAPTER 2,ILLUSTRATION 14 PAGE 68
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS

clc
clear
//============================================================================================================================
//INPUT
PI=3.141
e=2.71
P=75//             POWER IN kW
D=1.5//            DIAMETER OF PULLEY IN m
U=.3//             COEFFICIENT OF FRICTION
beeta=45/2//       GROOVE ANGLE
THETA=160*PI/180// ANGLE OF CONTACT IN radians
m=.6//             MASS OF BELT IN kg/m
Tmax=800//         MAX TENSION IN N
N=200//            SPEED OF SHAFT IN rpm
//=============================================================================================================================
//calculation
V=PI*D*N/60//               VELOCITY OF ROPE IN m/s
Tc=m*V^2//                  CENTRIFUGAL TENSION IN N
T1=Tmax-Tc//                     TENSION ON TIGHT SIDE IN N
T2=T1/(e^(U*THETA/sind(beeta)))//TENSION ON SLACKSIDE IN N
P2=(T1-T2)*V/1000//              POWER TRANSMITTED PER BELT kW
No=P/P2//                          NO OF V-BELTS
N3=No+1//                           ROUNDING OFF
To=(T1+T2+Tc*2)/2//                 INITIAL TENSION
//================================================================================================================================
//OUTPUT
printf('NO OF BELTS REQUIRED TO TRANSMIT POWER=%f APPROXIMATELY=%d\n',No,N3)
printf('INITIAL ROPE TENSION=%f N',To)
