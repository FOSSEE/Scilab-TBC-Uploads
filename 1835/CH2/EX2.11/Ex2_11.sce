//CHAPTER 2,ILLUSTRATION 11 PAGE 65
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//INPUT
C=4.5//      CENTRE DISTANCE IN metres
D1=1.35//    DIAMETER OF LARGER PULLEY IN metres
D2=.9//      DIAMETER OF SMALLER PULLEY IN metres
To=2100//    INITIAL TENSION IN newtons
b=12//       WIDTH OF BELT IN cm
t=12//       THICKNESS OF BELT IN mm
d=1//        DENSITY IN gm/cm^3
U=.3//       COEFFICIENT OF FRICTION
L=1//        length in metres
PI=3.141
e=2.71

//CALCULATION
M=b*t*d*L*10^-2//               mass of belt per metre length in KG
V=(To/3/M)^.5//                 VELOCITY OF FOR MAX POWER TO BE TRANSMITTED IN m/s
Tc=M*V^2//                      CENTRIFUGAL TENSION IN newtons
//                              LET (T1+T2)=X
X=2*To-2*Tc   //                THE VALUE OF (T1+T2)
F=(D1-D2)/(2*C)
ALPHA=asind(F)
THETA=(180-(2*ALPHA))*PI/180//   ANGLE OF CONTACT IN radians
//                               LET T1/T2=Y
Y=e^(U*THETA)//                  THE VALUE OF T1/T2
T1=X*Y/(Y+1)//                   BY SOLVING X AND Y WE WILL GET THIS EQN
T2=X-T1
P=(T1-T2)*V/1000//                 MAX POWER TRANSMITTED IN kilowatts
N1=V*60/(PI*D1)//                   SPEED OF LARGER PULLEY IN rpm
N2=V*60/(PI*D2)//                   SPEED OF SMALLER PULLEY IN rpm
//OUTPUT
printf('\n MAX POWER TO BE TRANSMITTED =%f KW',P)
printf('\n SPEED OF THE LARGER PULLEY =%f rpm',N1)
printf('\n SPEED OF THE SMALLER PULLEY =%f rpm',N2)
