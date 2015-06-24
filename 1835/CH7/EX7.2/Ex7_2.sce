//CHAPTER 7 ILLUSRTATION 2 PAGE NO 197
//TITLE:GOVERNORS
//FIGURE 7.5(A),7.5(B)
clc
clear
//===========================================================================================
//INPUT DATA
OA=.3//                          LENGTH OF UPPER ARM IN m
m=6//                            MASS OF EACH BALL IN Kg
M=18//                           MASS OF SLEEVE IN Kg
r2=.2//                          RADIUS OF ROTATION AT BEGINING IN m
r1=.25//                         RADIUS OF ROTATION AT MAX SPEED IN m
//===========================================================================================
h1=(OA^2-r1^2)^.5//             HIEGHT OF GOVERNOR AT MAX SPEED IN m
N1=(895*(m+M)/(h1*m))^.5//      MAX SPEED IN rpm
h2=(OA^2-r2^2)^.5//             HEIGHT OF GONERNOR AT BEGINING IN m
N2=(895*(m+M)/(h2*m))^.5//      MIN SPEED IN rpm
//===========================================================================================
printf('MAX SPEED = %.3f rpm\n MIN SPEED = %.3f rpm\n RANGE OF SPEED = %.3f rpm',N1,N2,N1-N2)
