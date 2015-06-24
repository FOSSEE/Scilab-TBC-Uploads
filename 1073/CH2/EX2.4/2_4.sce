clc;
clear;
//Example 2.4
printf("Example 2.4")
//Given
A=1 //Heat transfer area  [sq m]
x1=0.229  // thickness of fire brick in [m]
x2=0.115  // thickness of insulating brick in [m]
x3=0.229  // thickness of building brick in [m]
k1=6.05  //thermal conductivity of fir brick  [W/(m.K)]
k2=0.581  //thermal conductivity of insulating brick   [W/m.K]
k3=2.33  //thermal conductivity of building brick   [W/m.K]
T1=1223  // inside temperature [K]
T2=323 // Outside temperature[K]
dT=T1-T2  //Overall temp drop [K]
R1=(x1/k1*A) //thermal resistance 1
R2=(x2/k2*A) // Thermal resistance 2
R3=(x3/k3*A) //Thermal resistance 3
Q=dT/(R1+R2+R3) //w/SQ m
Ta=-((Q*R1)-T1)  //from  Q1=Q=(T1-Ta)/(x1/k1*A)
//Similarly
Tb=(Q*R3)+T2;
printf("Interface temperature:\n i-Between  FB-IB=%f K  \nii-Between IB-PB=%fK",Ta,Tb);

