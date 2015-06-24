//CHAPTER 3 ILLUSRTATION 13 PAGE NO 111
//TITLE:FRICTION
clc
clear
//===================================================================================
//INPUT DATA
PI=3.147
W=20000//                                LOAD IN NEWTONS
ALPHA=120/2//                               CONE ANGLE IN DEGREES
p=350000//                                INTENSITY OF PRESSURE
U=.06
N=120//                                    SPEED OF THE SHAFT IN rpm
//d1=3d2
//r1=3r2
//===================================================================================
//CALCULATION
//LET K=d1/d2
k=3
Z=W/((k^2-1)*PI*p)
r2=Z^.5//                                  INTERNAL RADIUS IN m
r1=3*r2
T=2*U*W*(r1^3-r2^3)/(3*sind(60)*(r1^2-r2^2))//     total frictional torque in N
P=2*PI*N*T/60000//                            power absorbed in friction in kW
//================================================================================
printf('\nTHE INTERNAL DIAMETER OF SHAFT =%3.3f cm\nTHE EXTERNAL DIAMETER OF SHAFT =%3.3f cm\nPOWER ABSORBED IN FRICTION =%.3f kW',r2*100,r1*100,P)
