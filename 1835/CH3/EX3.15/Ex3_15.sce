//CHAPTER 3 ILLUSRTATION 14 PAGE NO 111
//TITLE:FRICTION
clc
//βμαφɳρΠπ
clear
//===========================================================================================
//INPUT DATA
PI=3.147
n1=3//                          NO OF DICS ON DRIVING SHAFTS
n2=2//                          NO OF DICS ON DRIVEN SHAFTS
d1=30//                         DIAMETER OF DRIVING SHAFT IN cm
d2=15//                         DIAMETER OF DRIVEN SHAFT IN cm
r1=d1/2
r2=d2/2
U=.3//                          COEFFICIENT FRICTION
P=30000//                       TANSMITTING POWER IN WATTS
N=1800//                        SPEED IN rpm
//===========================================================================================
//CALCULATION
n=n1+n2-1//                     NO OF PAIRS OF CONTACT SURFACES
T=P*60000/(2*PI*N)//            TORQUE IN N-m
W=2*T/(n*U*(r1+r2)*10)//           LOAD IN N
k=W/(2*PI*(r1-r2))
p=k/r2/100//                        MAX AXIAL INTENSITY OF PRESSURE IN N/mm^2
//===========================================================================================
// OUTPUT
printf('MAX AXIAL INTENSITY OF PRESSURE =%f N/mm^2',p)
