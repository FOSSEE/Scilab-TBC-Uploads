
clear;
clc;
//Example 2.29
//Determine necessary thickness of insulation brick
//Given
A=1    //Assume [sq m]
x1=0.003    //[m]
x3=0.008    //[m]
k1=30    //[W/m.K]
k2=0.7    //[W/m.K]
k3=40    //[W/m.K]
T1=363    //[K]
T=333    //[K]
T2=300    //[K]
h0=10    //W/sq m.K
//Q=(T1-T2)/(x1/(k1*A)+x2/(k2*A)+x3/(k3*A)+1/(h0*A))
//Also,Q=(T-T2)/(1/(h0*A))
//So, (T1-T2)/((x1/(k1*A)+x2/(k2*A)+x3/(k3*A)+1/(h0*A))=(T-T2)/(1/(h0*A))
//or,x2=k2*A((T1-T2)/((T-T2)*h0*A)-1/(h0*A)-x1/(k1*A)-x3/(k3*A))
x2=k2*A*((T1-T2)/((T-T2)*h0*A)-1/(h0*A)-x1/(k1*A)-x3/(k3*A)); //[m]
printf("Thicknessof insulating brick required is %f mm",x2*1000);
