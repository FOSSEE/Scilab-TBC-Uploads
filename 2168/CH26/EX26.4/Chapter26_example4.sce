clc
clear
//Input data
p1=7//Pressure of gas before expansion in kg/cm^2
p2=5//Pressure of gas after expansion in kg/cm^2
T1=250+273//Temperature of gas before expansion in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
nv=0.8//Nozzle efficiency

//Calculations
R=427*(Cp-Cv)//Characteristic gas constant in kg.m/kg.K
g=(Cp/Cv)//Ratio of specific heats
V1=(R*T1)/(p1*10^4)//Volume in cu.m per kg
V2=(V1*(p1/p2)^(1/g))//Volume in cu.m per kg
Wd=(g/(g-1))*(p1*V1-p2*V2)*10^4//Work done in m.kg per kg
KE=(nv*Wd)//Kinetic energy at exit in m.kg per kg
v3=sqrt(2*9.81*nv*Wd)//Velocity in m/s
T2=(T1*(p2/p1)*(V2/V1))//Temperature in K
T3=(((1-nv)*Wd)/(427*Cp))+T2//Temperature in K
V3=(V2*(T3/T2))//Volume in cu.m per kg
qa=(V3/v3)*10^4//Discharge area unit rate of mass flow in cm^2

//Output
printf('Area of discharge per unit rate of mass flow is %3.2f sq.cm',qa)

