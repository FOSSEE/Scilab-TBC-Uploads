//CHAPTER 3 ILLUSRTATION 14 PAGE NO 111
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
P=10000//                               POWER TRRANSMITTED BY CLUTCH IN WATTS
N=3000//                                SPEED IN rpm
p=.09//                                 AXIAL PRESSURE IN N/mm^2
//d1=1.4d2                              RELATION BETWEEN DIAMETERS 
K=1.4//                                 D1/D2
n=2
U=.3//                                  COEFFICIENT OF FRICTION
//==========================================================================================
T=P*60000/1000/(2*PI*N)//                     ASSUMING UNIFORM WEAR            TORQUE IN N-m
r2=(T*2/(n*U*2*PI*p*10^6*(K-1)*(K+1)))^(1/3)//            INTERNAL RADIUS

//===========================================================================================
printf('THE INTERNAL RADIUS =%f cm\n THE EXTERNAL RADIUS =%f cm',r2*100,K*r2*100)
 
