//CHAPTER 3 ILLUSRTATION 6 PAGE NO 106
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
d=50//                 DIAMETER OF SCREW IN mm
p=12.5//               PITCH IN mm
U=0.13//               COEFFICIENT OF FRICTION
W=25000//              LOAD IN mm
PI=3.147
//===========================================================================================
//CALCULATION
ALPHA=atand(p/(PI*d))
PY=atand(U)
P=W*tand(ALPHA+PY)//         FORCE REQUIRED TO RAISE THE LOAD IN N
T1=P*d/2//                   TORQUE REQUIRED IN Nm
P1=W*tand(PY-ALPHA)//        FORCE REQUIRED TO LOWER THE SCREW IN N
T2=P1*d/2//                  TORQUE IN N
X=T1/T2//                     RATIOS REQUIRED
n=tand(ALPHA/(ALPHA+PY))//    EFFICIENCY
//============================================================================================
printf('RATIO OF THE TORQUE REQUIRED TO RAISE THE LOAD,TO THE TORQUE REQUIRED TO LOWER THE LOAD =%.3f',X)
