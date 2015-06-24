clc
clear
//Input data
r=8;//The compression ratio
af=15;//Air/fuel ratio
p1=1;//The pressure at the beginning of a compression stroke in bar
t=60;//The temperature at the beginning of a compression stroke in degree centigrade
cv=44000;//The calorific value of the fuel in kJ/kg
n=1.32;//The index of the compression 
Cv=0.717;//specific heat at constant volume in kJ/kgK

//Calculations
T1=t+273;//The temperature at the beginning of a compression stroke in K
p2=p1*(r)^n;//The pressure at the end of a compression stroke in bar
T2=T1*r^(n-1);//The temperature at the end of a compression stroke in K
f=(1/(af+1));//The amount of fuel present in 1 kg of mixture in kg
a=(af/(af+1));//The amount of air present in 1 kg of mixture in kg
q23=cv/(af+1);//The heat transfer during process 2-3 per kg of mixture in kJ/kg
T3=[[-10430+[(10430)^2+(4*494.8*10^5)]^(1/2)]/2];//The temperature at point 3 in K
p3=(T3/T1)*(r)*p1;//The pressure at point 3 in bar
T31=(q23/Cv)+T2;//The pressure at point 3 in K
p31=(T31/T1)*r*p1;//The pressure at point 3 in bar

//Output
printf('(a) The Maximum temperature in the cylinder T3 = %3.0f K \n The Maximum pressure in the cylinder P3 = %3.0f bar \n (b)With constant value of Cv \n The Maximum temperature in the cylinder T3 = %3.0f K \n The Maximum pressure in the cylinder P3 = %3.1f bar ',T3,p3,T31,p31)
