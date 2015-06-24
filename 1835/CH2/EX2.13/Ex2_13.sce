//CHAPTER 2,ILLUSTRATION 13 PAGE 67
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//============================================================================================================================
//INPUT
PI=3.141
e=2.71
P=90//                      POWER OF A COMPRESSOR IN kW
N2=250//                   SPEED OF DRIVEN SHAFT IN rpm
N1=750//                   SPEED OF DRIVER SHAFT IN rpm
D2=1//                     DIAMETER OF DRIVEN SHAFT IN m
C=1.75//                    CENTRE DISTANCE IN m
V=1600/60//                 VELOCITY IN m/s
a=375//                     CROSECTIONAL AREA IN mm^2
density=1000//              BELT DENSITY IN kg/m^3
L=1//                       length to be considered
Fb=2.5//                    STRESSS INDUCED IN MPa
beeta=35/2//                THE GROOVE ANGLE OF PULLEY
U=.25//                     COEFFICIENT OF FRICTION
//=================================================================================================================================
//CALCULATION
D1=N2*D2/N1//               DIAMETER OF DRIVING SHAFT IN m
m=a*density*10^-6*L//       MASS OF THE BELT IN kg
Tmax=a*Fb//                 MAX TENSION IN N
Tc=m*V^2//                  CENTRIFUGAL TENSION IN N
T1=Tmax-Tc//                TENSION ON TIGHTSIDE OF BELT IN N
F=(D2-D1)/(2*C)
ALPHA=asind(F)
THETA=(180-(2*ALPHA))*PI/180//   ANGLE OF CONTACT IN radians
T2=T1/(e^(U*THETA/sind(beeta)))//TENSION ON SLACKSIDE IN N
P2=(T1-T2)*V/1000//              POWER TRANSMITTED PER BELT kW
N=P/P2//                          NO OF V-BELTS
N3=N+1
//======================================================================================================================================
//OUTPUT
printf('NO OF BELTS REQUIRED TO TRANSMIT POWER=%f APPROXIMATELY=%d\n',N,N3)


