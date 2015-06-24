//CHAPTER 3 ILLUSRTATION 2 PAGE NO 103
//TITLE:FRICTION
//FIRURE 3.17
clc
clear
//===========================================================================================
//INPUT DATA
THETA=45//                ANGLE OF INCLINATION IN DEGREES
g=9.81//                   ACCELERATION DUE TO GRAVITY IN N/mm^2
U=.1//                     COEFFICIENT FRICTION
//Rn=NORMAL REACTION
//M=MASS IN NEWTONS
//f=ACCELERATION OF THE BODY
u=0//                      INITIAL VELOCITY
V=10//                     FINAL VELOCITY IN m/s^2
//===========================================================================================
//CALCULATION
//CONSIDER THE EQUILIBRIUM OF FORCES PERPENDICULAR TO THE PLANE
//Rn=Mgcos(THETA)
//CONSIDER THE EQUILIBRIUM OF FORCES ALONG THE PLANE
//Mgsin(THETA)-U*Rn=M*f.............BY SOLVING THESE 2 EQUATIONS 
f=g*sind(THETA)-U*g*cosd(THETA)
s=(V^2-u^2)/(2*f)//                  DISTANCE ALONG THE PLANE IN metres
//==============================================================================================
//OUTPUT
printf('DISTANCE ALONG THE INCLINED PLANE=%3.3f m',s)


