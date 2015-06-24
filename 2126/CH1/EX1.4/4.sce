clc
clear

//Input data
P1=0.5 //Initial Pressure in bar
T1=50+273 //Intial Temperature in K
C1=240 //Inlet velocity in m/s
C2=120 //Outlet velocity in m/s, missing data
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic constant

//Calculation
T2=T1+((C1^2-C2^2)/(2*Cp)) //Final Temperature in K
t1=T2/T1 //Temperature ratio
P2=P1*t1^(k/(k-1)) //Final Pressure in bar
ar=(P1*T2*C1)/(P2*T1*C2) //Ratio of outlet to inlet area

//Output
printf('(A)At outlet:\n    Temperature is %3.2f K\n    Pressure is %3.4f bar\n (B)Ratio of outlet to inlet area is %3.4f',T2,P2,ar)
