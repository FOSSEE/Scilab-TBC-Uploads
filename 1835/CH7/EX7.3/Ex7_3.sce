//CHAPTER 7 ILLUSRTATION 3 PAGE NO 197
//TITLE:GOVERNORS
//FIGURE 7.6
clc
clear
//===========================================================================================
//INPUT DATA
OA=.25//                                 LENGHT OF UPPER ARM IN m
CD=.03//                                 DISTANCE BETWEEN LEEVE AND LOWER ARM IN m
m=6//                                    MASS OF BALL IN Kg
M=48//                                   MASS OF SLEEVE IN Kg
AE=.17//                                  FROM FIGURE 7.6
AE1=.12//                                 FROM FIGURE 7.6
r1=.2//                                  RADIUS OF ROTATION AT MAX SPEED IN m
r2=.15//                                 RADIUS OF ROTATION AT MIN SPEED IN m
//============================================================================================
h1=(OA^2-r1^2)^.5//                     HIEGHT OF GOVERNOR AT MIN SPEED IN m
TANalpha=r1/h1
TANbeeta=AE/(OA^2-AE^2)^.5
k=TANbeeta/TANalpha
N1=(895*(m+(M*(1+k)/2))/(h1*m))^.5//    MIN SPEED IN rpm
h2=(OA^2-r2^2)^.5//                    HIEGHT OF GOVERNOR AT MAX SPEED IN m
CE=(OA^2-AE1^2)^.5
TANalpha1=r2/h2
TANbeeta1=(r2-CD)/CE
k=TANbeeta1/TANalpha1
N2=(895*(m+(M*(1+k)/2))/(h2*m))^.5//    MIN SPEED IN rpm
//========================================================================================================
printf('MAX SPEED = %.3f rpm\n MIN SPEED = %.3f rpm\n RANGE OF SPEED = %.3f rpm',N1,N2,N1-N2)
