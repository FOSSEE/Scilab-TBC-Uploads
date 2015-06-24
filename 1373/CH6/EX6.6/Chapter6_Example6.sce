//Chapter-6, Example 6.6, Page 247
//=============================================================================
clc
clear

//INPUT DATA
p=0.8;//Dynamic viscosity in N.s/m^2
k=0.15;//Thermal conductivity in W/m.K
Tb=10;//Temperature of bearing in degree C
Ts=30;//Temperature of the shaft in degree C
C=0.002;//Clearance between bearig and shaft in m
U=6;//Velocity in m/s

//CALCULATIONS
qb=(((-p*U^2)/(2*C))-((k/C)*(Ts-Tb)))/1000;//Surface heat flux at the bearing in kW/m^2
qs=(((p*U^2)/(2*C))-((k/C)*(Ts-Tb)))/1000;//Surface heat flux at the shaft in kW/m^2
Tmax=Tb+(((p*U^2)/(2*k))*(0.604-0.604^2))+((Ts-Tb)*0.604);//Maximum temperature in degree C occurs when ymax=0.604L

//OUTPUT
mprintf('Maximum temperature rise is %3.3f degree C \n Heat fux to the bearing is %3.1f kW/m^2 \n Heat fux to the shaft is %3.1f kW/m^2',Tmax,qb,qs)

//=================================END OF PROGRAM==============================
