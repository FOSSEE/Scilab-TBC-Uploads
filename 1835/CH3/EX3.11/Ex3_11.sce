//CHAPTER 3 ILLUSRTATION 11 PAGE NO 109
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
d1=15//                                 DIAMETER OF VERTICAL SHAFT IN cm
N=100//                                 SPEED OF THE MOTOR rpm
W=20000//                                LOAD AVILABLE IN N
U=.05//                                  COEFFICIENT OF FRICTION
PI=3.147
//==================================================================================
T=2/3*U*W*d1/2//                         FRICTIONAL TORQUE IN N-m
PL=2*PI*N*T/100/60//                         POWER LOST IN FRICTION IN WATTS
//==================================================================================
//OUTPUT
printf('POWER LOST IN FRICTION=%3.3f watts',PL)
