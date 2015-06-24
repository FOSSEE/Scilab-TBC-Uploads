//CHAPTER 2,ILLUSTRATION 6 PAGE 61
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//========================================================================================
//INPUT
D1=80//DIAMETER OF SHAFT IN cm
N1=160//SPEED OF 1ST SHAFT IN rpm
N2=320//SPEED OF 2ND SHAFT IN rpm
C=250//CENTRE DISTANCE IN CM
U=.3//COEFFICIENT OF FRICTION
P=4//POWER IN KILO WATTS
e=2.71
PI=3.141
f=110//STRESS PER cm WIDTH OF BELT
//========================================================================================
//CALCULATION
V=PI*D1*10^-2*N1/60//VELOCITY IN m/s
Y=P*1000/V//Y=T1-T2
D2=D1*N1/N2//DIAMETER OF DRIVEN SHAFT
F=(D1-D2)/(2*C)
ALPHA=asind(F)
THETA=(180-(2*ALPHA))*PI/180//ANGLE OF CONTACT IN radians
X=e^(U*THETA)//VALUE OF T1/T2
T1=X*Y/(X-1)
b=T1/f//WIDTH OF THE BELT REQUIRED 
//=======================================================================================
//OUTPUT
printf('THE WIDTH OF THE BELT IS %f cm',b)
