clc
clear

//Input data
Po=600 //Stagnation pressure in kPa
To=40+273 //Stagnation temperature in K
P2=100 //exit pressure in kPa
k=1.4 //Adiabatic Constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
p1=P2/Po //pressure ratio 
M2=1.82 //Exit mach number from gas tables @p2,k=1.4
ar=1.461 //Ratio of nozzle exit area to nozzle throat area from gas tables @M2
t1=0.602 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To*t1 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit air velocity in m/s
p2=3.698 //Ratio of static pressures after shock to before shock from normal shock gas tables @M2 
Py=p2*P2 //The back pressure at which normal shock acts at the exit plane of the nozzle in kPa

//Output
printf('(A)Ratio of nozzle exit area to nozzle throat area is %3.3f\n (B)The discharge velocity from nozzle is %3.2f m/s\n (C)The back pressure at which normal shock acts at the exit plane of the nozzle is %3.1f kPa',ar,C2,Py)
