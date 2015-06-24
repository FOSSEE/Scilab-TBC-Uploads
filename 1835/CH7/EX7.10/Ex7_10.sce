//CHAPTER 7 ILLUSRTATION 10 PAGE NO 206
//TITLE:GOVERNORS
//FIGURE 7.10
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
AE=.25//                  LENGTH OF UPPER ARM IN m
CE=.25//                  LENGTH OF LOWER ARM IN m
EH=.1//                   LENGTH OF EXTENDED ARM IN m
EF=.15//                  RADIUS OF BALL PATH IN m
m=5//                     MASS OF EACH BALL IN Kg
M=40//                    MASS OF EACH BALL IN Kg
//===================================================================
h=(AE^2-EF^2)^.5//           HEIGHT OF THE GOVERNOR IN m
EM=h
HM=EH+EM//                   FROM FIGURE 7.10
N=((895/h)*(EM/HM)*((m+M)/m))^.5
printf('EQUILIBRIUM SPEED OF GOVERNOR = %.3f rpm',N)
