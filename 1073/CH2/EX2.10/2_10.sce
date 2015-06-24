clear;
clc;
//Example 2.10
printf("Example 2.10")
A= 1 //sq m
x1=0.15
x2=0.01
x4=0.15
T1=973  //[K]
T2=288  //[K]
dT=T1-T2  //[K]
//Thermal conductivities
k1=1.75  
k2=16.86
k3=0.033
k4=5.23
//in absence of air gap,sum of thermal resistances 
sR=(x1/k1*A)+(x2/k2*A)+(x4/k4*A)
Q= dT/sR
printf("Heat lost per sq meter is %d W/sq m",Q);
//When heat loss,Q=1163,then new resistance =sR1
Q1=1163  //[W/sq m]
sR1=dT/Q1
//width of air gap be w then
w=(sR1-sR)*k3*A  // [m]
w=w*1000  //in [mm]
printf("Width of air gap is %f mm",w);
