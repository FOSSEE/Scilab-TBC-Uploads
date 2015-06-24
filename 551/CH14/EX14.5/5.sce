clc
T1=291; //K
T2=265; //K
T0=273; //K
cpw=4.18; //kJ/kg
cpi=2.09; //kJ/kg
L=334; //kJ/kg
m=400; //kg

COP=T2/(T1-T2);
Rn=cpw*(T1-T0) + L + cpi*(T0-T2);

W=Rn*m/COP/3600; //kJ/s
disp("Least power =")
disp(W)
disp("kW")