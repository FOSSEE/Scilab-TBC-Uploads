//CHAPTER 3 ILLUSRTATION 3 PAGE NO 104
//TITLE:FRICTION
//FIRURE 3.18
clc
clear
//===========================================================================================
//INPUT DATA
W=500//                  WEGHT IN NEWTONS
THETA=30//               ANGLE OF INCLINATION IN DEGRESS
U=0.2//                  COEFFICIENT FRICTION
S=15//                   DISTANCE IN metres
//============================================================================================
Rn=W*cosd(THETA)//       NORMAL REACTION IN NEWTONS
P=W*sind(THETA)+U*Rn//   PUSHING FORCE ALONG THE DIRECTION OF MOTION
w=P*S
//============================================================================================
//OUTPUT
printf('WORK DONE BY THE FORCE=%3.3f N-m',w)
