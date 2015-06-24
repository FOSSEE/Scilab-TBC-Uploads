clc
clear

//input data
Pa=1*10^5 //Pressure of dry air in Pa
To1=288 //Total stagnation temperature at inlet in K
M1=1 //Mach number at inlet of pipe
M2=0.8 //Mach number at exit o pipe
Cp=1.005 //Specific heat of dry air in kJ/kg-K   
 
//calculation
t1=0.834 //Temperature ratio at entry, i.e.entry static temperature to total temperature from gas tables at isentropic,M1=1 & adiabatic constant=1.4
T1=t1*To1 //Static temperature at entry in Kelvin
t2=0.964 //Temperature ratio at critical state, i.e. exit stagnation temperature to critical state temperature from gas tables at Rayleigh, M2=0.8 & adiabatic constant=1.4
To2=t2*To1 //Total stagnation temperature at exit in K
t3=1.025 //Temperature ratio at exit, i.e. exit static temperature to total temperature from gas tables at isentropic,M1=1 & adiabatic constant=1.4
T2=t3*T1 //Static temperature at exit in Kelvin
q=Cp*(To1-To2) //The heat transferred per unit mass flow in kJ/kg
dT=To1-T2 //Change in temperature in K

//output
printf('(A)The heat transferred per unit mass flow is %3.3f kJ/kg (rejected)\n (B)Change in temperature is %3.3f K',q,dT)
