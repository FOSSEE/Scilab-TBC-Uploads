//CHAPTER 11 ILLUSRTATION 3 PAGE NO 291
//TITLE:VIBRATIONS
//FIGURE 11.11
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
D=.050//                                       DIAMETER OF SHAFT IN m
m=450//                                      WEIGHT OF FLY WHEEL IN IN Kg
K=.5//                                       RADIUS OF GYRATION IN m
L2=.6//                                     FROM FIGURE IN m
L1=.9//                                     FROM FIGURE IN m
L=L1+L2
E=200*10^9//                     YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
C=84*10^9//                      MODUKUS OF RIDITY OF SHAFT MATERIAL IN Pascals
//=========================================================================================
A=PI*D^2/4//                               AREA OF SHAFT IN mm^2
I=PI*D^4/64//                     
m1=m*L2/(L1+L2)//                           MASS OF THE FLYWHEEL CARRIED BY THE LENGTH L1 IN Kg
DELTA=m1*g*L1/(A*E)//                       EXTENSION OF LENGTH L1 IN m
Fn=0.4985/(DELTA)^.5//                      FREQUENCY OF LONGITUDINAL VIBRATION IN Hz
DELTA1=(m*g*L1^3*L2^3)/(3*E*I*L^3)//        STATIC DEFLECTION IN TRANSVERSE VIBRATION IN m
Fn1=0.4985/(DELTA1)^.5//                    FREQUENCY OF TRANSVERSE VIBRATION  IN Hz
J=PI*D^4/32//                               POLAR MOMENT OF INERTIA IN m^4
Q1=C*J/L1//                                 TORSIONAL STIFFNESS OF SHAFT DUE TO L1 IN N-m
Q2=C*J/L2//                                  TORSIONAL STIFFNESS OF SHAFT DUE TO L2 IN N-m
Q=Q1+Q2//                                    TORSIONAL STIFFNESS OF SHAFT IN Nm
Fn2=(Q/(m*K^2))^.5/(2*PI)//                  FREQUENCY OF TORSIONAL VIBRATION  IN Hz
//=======================================================================================
printf('FREQUENCY OF LONGITUDINAL VIBRATION = %.3f Hz\n FREQUENCY OF TRANSVERSE VIBRATION = %.3f Hz\n FREQUENCY OF TORSIONAL VIBRATION = %.3f Hz',Fn,Fn1,Fn2)

