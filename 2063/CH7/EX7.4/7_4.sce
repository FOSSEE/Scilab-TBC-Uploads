clc
clear
//Input data
n1=50.5;//Air standard efficiency in percentage
n2=50;//Brake thermal efficiency in percentage
N=3000;//Engine speed in rpm
H=10500;//Heating value of fuel in kcal/kg
T=7.2;//Torque developed in kgf*m
B=6.3;//Bore diameter in cm
S=0.095;//stroke in m

//Calculations
nbt=(n1/100)*(n2/100);//Brake thermal efficiency in percentage
B1=(2*(22/7)*N*T)/4500;//Brake horse power in kW
B2=B1/4;//Brake horse power per cylinder in kW
Bsf=(4500*60)/(H*427*nbt);//Brake specific fuel consumption in kg/BHP hr
bmep=(B2*4500)/(S*(3.14*B^2/4)*(N/2));//Brake mean effective pressure in kgf/cm^2

//Output
printf('(a)Specific fuel consumption is %3.3f kg/BHP hr\n (b)Brake mean effective pressure is %3.3f kgf/cm^2',Bsf,bmep)
