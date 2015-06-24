clc
clear

//Input data
Po1=4.9 //Stagnation pressure at entry in bar
P2=1.4 //Exit pressure in bar
To=810 //Stagnation temperature in K
m=1 //Mass flow rate in kg/s
eff=0.9 //Nozzle efficiency 
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculations
t1=0.834 //Ratio of critical temperature to Stagnation temperature from gas tables @M=1
Tt=To*t1 //critical temperature in K
at=sqrt(k*R*Tt) //Sound velocity at critical state in m/s 
Ct=at //Air velocity t throat in m/s, Since M=1
p1=0.528 //Ratio of critical pressure to Stagnation pressure from gas tables @M=1
Pt=Po1*p1 //critical pressure in bar
dt=(Pt*10^5)/(R*Tt) //Density of air at throat in kg/m^3, Pt in Pa
At=(m/(dt*Ct))*10^4 //Throat area in cm^2 
p2=P2/Po1 //Pressure ratio
T2s=To*p2^((k-1)/k) //Exit temperature in K (at isentropic state)
T2=To-(eff*(To-T2s)) //Exit temperature in K
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3, P2 in Pa
C2=sqrt(2*Cp*(To-T2)) //Exit air velocity in m/s
A2=(m/(d2*C2))*10^4 //Exit area in cm^2
a2=sqrt(k*R*T2) //Sound velocity at exit in m/s 
M2=C2/a2 //Exit mach number
p3=0.332 //Static to stagnation pressure ratio at exit from isentropic gas tables @M2,k=1.4 
Po2=P2/p3 //stagnation pressure in bar
TPL=Po1-Po2 //Loss in total pressure is %3.3f bar
ds=R*log(Po1/Po2) //Increase in entropy in kJ/kg-K

//Output
printf('(A)Throat and exit area are %3.2f cm^2 and %3.3f cm^2\n (B)Exit mach number is %3.2f\n (C)Loss in total pressure is %3.3f bar\n (D)Increase in entropy is %3.2f kJ/kg-K',At,A2,M2,TPL,ds)
