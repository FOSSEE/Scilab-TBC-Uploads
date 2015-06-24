clc
clear

//Input data
Po=3.5 //Stagnation pressure in bar
To=425+273 //Stagnation temperature in K
P2=0.97 //Exit pressure in bar
m=18 //Mass flow rate in kg/s
Kd=0.99 //Coefficient of discharge
eff=0.94 //Nozzle efficiency 
k=1.33 //Adiabatic Constant
Cp=1110 //Specific heat capacity at constant pressure in J/kg-K 

//Calculations 
Pt=Po*(2/(k+1))^(k/(k-1)) //critical pressure in bar
Tt=To*(2/(k+1)) //critical temperature in K
R=Cp/(k/(k-1)) //Specific gas constant in J/kg-K
m_s=m/Kd //Isentropic mass
at=sqrt(k*R*Tt) //Sound velocity at throat in m/s
Ct=at //Air velocity t throat in m/s, Since M=1
dt=(Pt*10^5)/(R*Tt) //Density of air at throat in kg/m^3, Pt in Pa
At=(m_s/(dt*Ct))*10^4 //Throat area in cm^2 
p2=P2/Po //Pressure ratio
T2s=To*p2^(1/(k/(k-1))) //Exit temperature in K (at isentropic state)
T2=To-(eff*(To-T2s)) //Exit temperature in K
d2=(P2*10^5)/(R*T2) //Density at exit in kg/m^3, P2 in Pa
C2=sqrt(2*Cp*(To-T2)) //Exit air velocity in m/s
A2=(m_s/(d2*C2))*10^4 //Exit area in cm^2

//Output
printf('Throat area and Exit area of nozzle are %3.1f cm^2 and %3.1f cm^2',At,A2)
