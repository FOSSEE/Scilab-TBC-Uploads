clear;
clc;
//Example 2.8
printf("Example 2.8 \n")
//Given:
x1=0.02  //[m]
x2=0.01  //[m]
x3=0.02  //[m]
k1=0.105  //W/(m.k)
k3=k1  //W/(m.K)
k2=0.041  //W/(m.K)
T1=303
T2=263
dT=T1-T2   //[K]
Q_by_A=dT/((x1/k1)+(x2/k2)+(x3/k3))
R=0.625  //K/W
Tx=293   //K
Rx=0.9524   //K/W
x=R*(T1-Tx)/(dT*Rx)
x=x*100  //mm
printf("The temperature of 293 K will be reached at point %f  mm from the outermost wall surface of the ice-box",x)
