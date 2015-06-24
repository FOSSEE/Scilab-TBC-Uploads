//CHAPTER 3 ILLUSRTATION 10 PAGE NO 108
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
d=2.5//                    MEAN DIA OF BOLT IN cm
p=.6//                     PITCH IN cm
beeta=55/2//               VEE ANGLE
dc=4//                     DIA OF COLLAR IN cm
U=.1//                       COEFFICIENT OF FRICTION OF BOLT
Uc=.18//                      COEFFICIENT OF FRICTION OF COLLAR
W=6500//                     LOAD ON BOLT IN NEWTONS
L=38//                       LENGTH OF SPANNER
//=============================================================================================
//CALCULATION
//LET X=tan(py)/tan(beeta)
//y=tan(ALPHA)*X
PY=atand(U)
ALPHA=atand(p/(PI*d))
X=tand(PY)/cosd(beeta)
Y=tand(ALPHA)
T1=W*d/2*10^-2*(X+Y)/(1-(X*Y))//             TORQUE IN SCREW IN N-m
Tc=Uc*W*dc/2*10^-2//                         TORQUE ON BEARING SERVICES IN N-m
T=T1+Tc//                                     TOTAL TORQUE 
P1=T/L*100//                                      FORCE REQUIRED BY @ THE END OF SPANNER
//=============================================================================================
//OUTPUT
printf('FORCE REQUIRED @ THE END OF SPANNER=%3.3f N',P1)
