//CHAPTER 7 ILLUSRTATION 5 PAGE NO 200
//TITLE:GOVERNORS
//FIGURE 7.8
clc
clear
//===========================================================================================
//INPUT DATA
g=9.81//                   ACCELERATION DUE TO GRAVITY 
OA=.30//                  LENGHT OF UPPER ARM IN m
AC=.30//                  LENGTH OF LOWER ARM IN m
m=10//                     MASS OF BALL IN Kg
M=50//                    MASS OF SLEEVE IN Kg
r=.2//                    RADIUS OF ROTATION IN m
CD=.04//                  DISTANCE BETWEEN AXIS AND LOWER ARM IN m
F=15//                    FRICTIONAL LOAD ACTING IN N
//============================================================
h=(OA^2-r^2)^.5//           HIEGTH OF THE GOVERNOR IN m
AE=r-CD//                   AE VALUE IN m
CE=(AC^2-AE^2)^.5//         BD DISTANCE IN m
TANalpha=r/h//              TAN OF ANGLE OF INCLINATION OF THE ARM TO THE VERTICAL
TANbeeta=AE/CE//            TAN OF ANGLE OF INCLINATION OF THE LINK TO THE VERTICAL
k=TANbeeta/TANalpha
N=((895/h)*(m+(M*(1+k)/2))/m)^.5//      EQULIBRIUM SPEED IN rpm
N1=((895/h)*((m*g)+(M*g+F)/2)*(1+k)/(m*g))^.5//        MAX SPEED IN rpm
N2=((895/h)*((m*g)+(M*g-F)/2)*(1+k)/(m*g))^.5//        MIN SPEED IN rpm
R=N1-N2//                                   RANGE OF SPEED
printf('EQUILIBRIUM SPEED OF GOVERNOR = %.3f rpm\n RANGE OF SPEED OF GOVERNOR= %.3f rpm',N,R)
