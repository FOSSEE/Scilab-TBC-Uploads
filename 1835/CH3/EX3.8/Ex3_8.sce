//CHAPTER 3 ILLUSRTATION 8 PAGE NO 107
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
W=50000//                        WEIGHT OF THE SLUICE GATE IN NEWTON
P=40000//                        POWER IN WATTS
N=580//                          MAX MOTOR RUNNING SPEEED IN rpm
d=12.5//                         DIAMETER OF THE SCREW IN cm
p=2.5//                          PITCH IN cm
PI=3.147
U1=.08//                          COEFFICIENT OF FRICTION for SCREW
U2=.1//                           C.O.F BETWEEN GATES AND SCREW
Np=2000000//                     NORMAL PRESSURE IN NEWTON
Fl=.15//                       FRICTION LOSS
n=1-Fl//                       EFFICIENCY
ng=80//                        NO OF TEETH ON GEAR
//===========================================================================================
//CALCULATION
TV=W+U2*Np//                     TOTAL VERTICAL HEAD IN NEWTON
ALPHA=atand(p/(PI*d))//         
PY=atand(U1)//                 
P1=TV*tand(ALPHA+PY)//            FORCE IN N
T=P1*d/2/100//                    TORQUE IN N-m
Ng=60000*n*P*10^-3/(2*PI*T)//              SPEED OF GEAR IN rpm
np=Ng*ng/N//                       NO OF TEETH ON PINION
//=========================================================================================
//OUTPUT
printf('NO OF TEETH ON PINION =%.2f say %d',np,np+1)
