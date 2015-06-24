clc
clear

//input data
M2=0.8 //Mack number at exit
t1=4 //Ratio of stagnation temperature at exit and entry
T1=288 //Atmospheric temperature in K
P1=1 //Atmospheric Pressure in atm
Cp=1.005 //Specific heat of dry air in kJ/kg-K

//calculation
t2=0.964 //Ratio of stagnation temperature at exit and critical state from gas tables
t3=t2/t1 //Ratio of stagnation temperature at entry and critical state
M1=0.24 ////Mach number at entry from gas tables (Rayleigh,t3,k=1.4)
t5=0.988 //Temperature ratio at entry from gas tables (M1,k=1.4,isentropic)
To1=T1/t5 //Total stagnation temperature at inlet in K
To2=t1*To1 //Stagnation exit temperation in K
Tot=To1/t3 //Stagnation critical temperature in K
q=Cp*(To2-To1) //The heat transferred per unit mass flow in kJ/kg
qmax=Cp*(Tot-To1) //Maximum possible heat transfer in kJ/kg 
t6=0.9775 //Ratio of stagnation temperature for maximum static temperature (M=1/sqrt(k),Rayleigh)
To3=Tot*t6 //maximum stagnation temperature in K
q_req=Cp*(To3-To1) //Heat transfer required to get maximum static temperature in kJ/kg

//output
printf('(A)Heat added per kg of air flow is %3.2f kJ/kg\n (B)Maximum possible heat transfer is %3.2f kJ/kg\n (C)Heat transfer required to get maximum static temperature is %3.1f kJ/kg',q,qmax,q_req)
