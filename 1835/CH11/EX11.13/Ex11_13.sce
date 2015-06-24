//CHAPTER 11 ILLUSRTATION 13 PAGE NO 300
//TITLE:VIBRATIONS
//FIGURE 11.21
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
D=.015//                                        DIAMETER OF SHAFT IN m
L=1.00//                                         LENGTH OF SHAFT IN m
M=15//                                           MASS OF SHAFT IN Kg
W=M*g
e=.0003//                                        ECCENTRICITY IN m
E=200*10^9//                                  YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
f=70*10^6//                                        PERMISSIBLE STRESS IN N/m^2
//============================================================================================
I=PI*D^4/64//                MOMENT OF INERTIA OF SHAFT IN m^4
DELTA=W*L^3/(192*E*I)//      STATIC DEFLECTION IN m
Fn=.4985/(DELTA)^.5//           NATURAL FREQUENCY OF TRANSVERSE VIBRATION
Nc=Fn*60//                   CRITICAL SPEED OF SHAFT IN rpm
M1=16*f*I/(D*g*L)
W1=M1*g//                    ADDITIONAL LOAD ACTING
y=W1/W*DELTA//               ADDITIONAL DEFLECTION DUE TO W1
N1=Nc/(1+e/y)^.5//              MIN SPEED IN rpm
N2=Nc/(1-e/y)^.5//              MAX SPEED IN rpm
//===========================================================================================
printf('CRITICAL SPEED OF SHAFT = %.3f rpm\n THE RANGE OF SPEED IS FROM %.3f rpm TO %.3f rpm',Nc,N1,N2)
