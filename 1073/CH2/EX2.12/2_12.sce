//Example 2.12
clear;
clc;
printf("Example 2.12\n")
//Given
x1=0.01  //[m]
x2=0.15  //[m]
x3=0.15  //[m]
T1=973  //[K]
T2=423  //[K]
dT=T1-T2;
//Thermal conductivities
k1=16.86  //[W/m.K]
k2=1.75  //[W/m.K]
k3=5.23  //[W/m.K]
k_air=0.0337  // [W/m.K]
A=1  //[sq m]
sigma_R=(x1/(k1*A)+x2/(k2*A)+x3/(k3*A))
Q=dT/sigma_R  //Heat flow in  [W
Tm= Q*x3/k3  //Temperature drop in magnesite brick
//Interface temperature=iT
iT=T2+Tm  //[K]
sigma_xbyk= A*dT/1163   //with air gap for reducing heat loss to 1163 per sq m
x_by_k=sigma_xbyk-sigma_R   //x/k for air
t=x_by_k*k_air
t=t*1000;
printf("Width of the air gap is %f mm",t);

 
