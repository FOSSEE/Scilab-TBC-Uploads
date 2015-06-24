//CHAPTER 7 ILLUSRTATION 9 PAGE NO 204
//TITLE:GOVERNORS
//FIGURE 7.3(C)
clc
clear
//===========================================================================================
//INPUT DATA
g=9.81//                   ACCELERATION DUE TO GRAVITY 
PI=3.147
r=.14//                          DISTANCE BETWEEN THE CENTRE OF PIVOT OF BELL CRANK LEVER AND AXIS OF GOVERNOR SPINDLE IN m
r2=.11//                         INITIAL RADIUS OF ROTATION IN m
a=.12//                          LENGTH OF VERTICAL ARM OF BELL CRANK LEVER IN m
b=.10//                          LENGTH OF HORIZONTAL ARM OF BELL CRANK LEVER IN m
h=.05//                         SLEEVE LIFT IN m
N2=240//                         INITIAL SPEED IN rpm
F=30//                           FRICTIONAL FORCE ACTING IN N
m=5//                            MASS OF EACH BALL IN Kg
//==========================================
r1=r2+a/b*h//                    MAX RADIUS OF ROTATION IN m
N1=41*N2/39//                 MAX SPEED OF ROTATION IN rpm
N=(N1+N2)/2//                 MEAN SPEED IN rpm
Fc1=m*(2*PI*N1/60)^2*r1//     CENTRIFUGAL FORCE ACTING AT MAX SPEED OF ROTATION IN N
Fc2=m*(2*PI*N2/60)^2*r2//     CENTRIFUGAL FORCE ACTING AT MIN SPEED OF ROTATION IN N
c1=r1-r//                     FROM FIGURE 7.3(C) IN m
a1=(a^2-c1^2)^.5//            FROM FIGURE 7.3(C) IN m
b1=(b^2-(h/2)^2)^.5//             FROM FIGURE 7.3(C) IN m
c2=r-r2//                     FROM FIGURE 7.3(C) IN m
a2=a1//                       FROM FIGURE 7.3(C) IN m
b2=b1//                       FROM FIGURE 7.3(C) IN m
S1=2*((Fc1*a1)-(m*g*c1))/b1//          SPRING FORCE EXERTED ON THE SLEEVE AT MAXIMUM SPEED IN NEWTONS
S2=2*((Fc2*a2)-(m*g*c2))/b2//          SPRING FORCE EXERTED ON THE SLEEVE AT MAXIMUM SPEED IN NEWTONS
S=(S1-S2)/h//                   STIFFNESS OF THE SPRING IN N/m
Is=S2/S//                       INITIAL COMPRESSION OF SPRING IN m
P=S2+(h/2*S)//                  SPRING FORCE OF MID PORTION IN N
n1=N*((P+F)/P)^.5//             SPEED,WHEN THE SLEEVE BEGINS TO MOVE UPWARDS FROM MID POSITION IN rpm
n2=N*((P-F)/P)^.5//             SPEED,WHEN THE SLEEVE BEGINS TO MOVE DOWNWARDS FROM MID POSITION IN rpm
A=n1-n2//                        ALTERATION IN SPEED IN rpm
printf('INTIAL COMPRESSION OF SPRING= %.3f cm\n ALTERATION IN SPEED = %.3f rpm',Is*100,A)
