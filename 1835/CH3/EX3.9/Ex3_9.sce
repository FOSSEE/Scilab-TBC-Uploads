//CHAPTER 3 ILLUSRTATION 9 PAGE NO 108
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
d=5//                         MEAN DIAMETER OF SCREW IN cm
p=1.25//                      PITCH IN cm
W=10000//                     LOAD AVAILABLE IN NEWTONS
dc=6//                        MEAN DIAMETER OF COLLAR IN cm
U=.15//                       COEFFICIENT OF FRICTION OF SCREW
Uc=.18//                      COEFFICIENT OF FRICTION OF COLLAR
P1=100//                      TANGENTIAL FORCE APPLIED IN NEWTON
PI=3.147
//============================================================================================
//CALCULATION
ALPHA=atand(p/(PI*d))//         
PY=atand(U)//                 
T1=W*d/2*tand(ALPHA+PY)/100//         TORQUE ON SCREW IN NEWTON
Tc=Uc*W*dc/2/100//                      TORQUE ON COLLAR IN NEWTON
T=T1+Tc//                          TOTAL TORQUE
D=2*T/P1/2*100//                       DIAMETER OF HAND WHEEL IN cm
//============================================================================================
//OUTPUT
printf('SUITABLE DIAMETER OF HAND WHEEL =%3.3f cm',D)
