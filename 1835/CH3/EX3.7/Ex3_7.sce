//CHAPTER 3 ILLUSRTATION 7 PAGE NO 107
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
d=39//                 DIAMETER OF THREAD IN mm
p=13//                 PITCH IN mm
U=0.1//                COEFFICIENT OF FRICTION
W=2500//               LOAD IN mm
PI=3.147
//===========================================================================================
//CALCULATION
ALPHA=atand(p/(PI*d))
PY=atand(U)
P=W*tand(ALPHA+PY)//         FORCE IN N
T1=P*d/2//                   TORQUE REQUIRED IN Nm
T=2*T1//                      TORQUE REQUIRED ON THE COUPLING ROD IN Nm
K=2*p//                      DISTANCE TRAVELLED FOR ONE REVOLUTION
N=20.8/K//                   NO OF REVOLUTIONS REQUIRED
w=2*PI*N*T/100//                 WORKDONE BY TORQUE
w1=w*(7500-2500)/2500//      WORKDONE TO INCREASE THE LOAD FROM 2500N TO 7500N
n=tand(ALPHA)/tand(ALPHA+PY)//    EFFICIENCY
//============================================================================================
//OUTPUT
printf('workdone against a steady load of 2500N=%3.3f N\n workdone if the load is increased from 2500N to 7500N=%3.3f N\n efficiency=%.3f',w,w1,n)
