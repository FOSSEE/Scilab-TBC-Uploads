//CHAPTER 7 ILLUSRTATION 8 PAGE NO 204
//TITLE:GOVERNORS
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
m=3//                           MASS OF BALL IN Kg
r2=.2//                         INITIAL RADIUS OF ROTATION IN m
a=.11//               LENGTH OF VERTICAL ARM OF BELL CRANK LEVER IN m
b=.15//               LENGTH OF HORIZONTAL ARM OF BELL CRANK LEVER IN m
h=.004//                  SLEEVE LIFT IN m
N2=240//                INITIAL SPEED IN rpm
n=7.5//                    FLUCTUATION OF SPEED IN %
//===================================
w2=2*PI*N2/60//                  INITIAL ANGULAR SPEED IN rad/s
w1=(100+n)*w2/100//              FINAL ANGULAR SPEED IN rad/s
F=2*a/b*m*w2^2*r2//              INITIAL COMPRESSIVE FORCE IN N
r1=r2+a/b*h//                    MAX RDIUS OF ROTATION IN m
S=2*((m*w1^2*r1)-(m*w2^2*r2))/(r1-r2)*(a/b)^2
printf('INITIAL COMPRESSIVE FPRCE = %.3f N\n STIFFNESS OF THE SPRING = %.3f N/m',F,S/1000)
