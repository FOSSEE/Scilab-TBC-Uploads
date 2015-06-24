//CHAPTER 7 ILLUSRTATION 1 PAGE NO 196
//TITLE:GOVERNORS
clc
clear
//===========================================================================================
//INPUT DATA
L=.4//                     LENGTH OF UPPER ARM IN m
THETA=30//                 INCLINATION TO THE VERTICAL IN degrees
K=.02//                    RISED LENGTH IN m
//============================================================================================
h2=L*cosd(THETA)//         GOVERNOR HEIGHT IN m
N2=(895/h2)^.5//           SPEED AT h2 IN rpm
h1=h2-K//                  LENGTH WHEN IT IS RAISED BY 2 cm
N1=(895/h1)^.5//           SPEED AT h1 IN rpm
n=(N1-N2)/N2*100//         PERCENTAGE CHANGE IN SPEED
//==========================================================================================
printf('PERCENTAGE CHANGE IN SPEED= %.f PERCENTAGE',n)
