clc
clear

//Input data
u=960*(5/18) //Flight velocity in m/s
ma=40 //Mass flow rate of air in kg/s
AFR=50 //Air fuel ratio
sig=0.5 //Jet speed ratio, for maximum thrust power
CV=43000 //Calorific value in kJ/kg

//Calculation
mf=ma/AFR //Mass flow rate of fuel in kg/s
m=ma+mf //Mass flow rate of gas in kg/s
Cj=u/sig //Jet velocity in m/s
F=((m*Cj)-(ma*u))*10^-3 //Thrust in kN
Fs=F*10^3/m //Specific thrust in Ns/kg, F in N
Pt=F*u //Thrust power in kW
eff_prop=((2*sig)/(1+sig))*100 //Propulsive efficiency of the cycle in %
eff_ther=((0.5*m*(Cj^2-u^2))/(mf*CV*10^3))*100 //Efficiency of turbine in %
eff=(eff_prop/100)*(eff_ther/100)*100 //Overall efficiency in %
TSFC=mf*3600/(F*10^3) //Thrust specific fuel consumption in kg/Nhr

//Output
printf('(A)Jet velocity is %3.1f m/s\n (B)Thrust is %3.3f kN\n (C)Specific thrust is %3.2f N-s/kg\n (D)Thrust power is %3.2f kW\n (E)propulsive, thermal and overall efficiency is %3.2f, %3.2f and %3.3f respectively\n (F)Thrust specific fuel consumption is %3.4f kg/Nhr',Cj,F,Fs,Pt,eff_prop,eff_ther,eff,TSFC)
