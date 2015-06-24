clc
clear

//Input data
u=800*(5/18) //Flight velocity in m/s
Pe=60 //Ambient pressure in kPa
Pn=300 //Pressure entering nozzle in kPa 
Tn=200+273 //Temperature entering nozzle in K 
m=20 //Mass flow rate of air in kg/s
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic constant for air

//Calculation
Te=Tn*(Pe/Pn)^((k-1)/k) //Exit temperature of nozzle in K
Cj=sqrt(2*Cp*(Tn-Te)) //Jet velocity in m/s
F=m*(Cj-u) //Thrust in N
P=F*u*10^-3 //Thrust power in kW
eff=((2*u)/(Cj+u))*100 //Propulsive efficiency in percent


//Output
printf('(A)Thrust developed is %3.1f N\n (B)Thrust developed is %3.2f kW\n (C)Propulsive efficiency is %3.3f percent',F,P,eff)
