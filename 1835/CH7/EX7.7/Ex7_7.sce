//CHAPTER 7 ILLUSRTATION 7 PAGE NO 203
//TITLE:GOVERNORS
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
m=3//                 MASS OF EACH BALL IN Kg
a=.12//               LENGTH OF VERTICAL ARM OF BELL CRANK LEVER IN m
b=.08//               LENGTH OF HORIZONTAL ARM OF BELL CRANK LEVER IN m
r2=.12//              RADIUS OF ROTATION OF THE BALL FOR LOWEST POSITION IN m
N2=320//               SPEED OF GOVERNOR AT THE BEGINING IN rpm
S=20000//                 STIFFNESS OF THE SPRING IN N/m
h=.015//                  SLEEVE LIFT IN m
//==================================================
Fc2=m*(2*PI*N2/60)^2*r2//               CENTRIFUGAL FORCE ACTING AT MIN SPEED OF ROTATION IN N
L=2*a*Fc2/b//                           INITIAL LOAD ON SPRING IN N
r1=a/b*h+r2//                           MAX RADIUS OF ROTATION IN m
Fc1=(S*(r1-r2)*(b/a)^2/2)+Fc2//         CENTRIFUGAL FORCE ACTING AT MAX SPEED OF ROTATION IN N
N1=(Fc1/(m*r1)*(60/2/PI)^2)^.5
printf('INITIAL LOAD ON SPRING =%.3f N\n EQUILIBRIUM SPEED CORRESPONDING TO LIFT OF 15 cm =%.0f rpm',L,N1)
