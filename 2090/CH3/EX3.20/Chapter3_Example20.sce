clc
clear
//Input data
t=25;//The temperature of air in degree centigrade
p=1;//The pressure of air in atm
T1=2200;//Given first temperature in K
T2=2400;//Given second temperature in K
h1=59.86;//The change in enthalpy of hydrogen at 2200 K in MJ/kmol
h2=66.915;//The change in enthalpy of hydrogen at 2400 K in MJ/kmol
T=298;//The temperature of air in K

//Calculations
HR=0;//The total enthalpy on the reactants side since all the reactants are elements
Kp1=-6.774;//Natural logarithm of equilibrium constant at 2200 K for the equation 
K1=exp(Kp1);//The value of equilibrium constant at 2200 K
a1=0.02;//By trail and error method the degree of dissociation of H2O
hfh=-241.82;//The enthalpy of formation of water at both 2200 and 2400 K in MJ/kmol
hfh1=83.036;//The change in enthalpy of water at 2200 K in MJ/kmol
hfd1=59.86;//The change in enthalpy of hydrogen at 2200 K in MJ/kmol
hfo1=66.802;//The change in enthalpy of oxygen at 2200 K in MJ/kmol
hfn1=63.371;//The change in enthalpy of nitrogen at 2200 K in MJ/kmol
HP1=(0.98*(hfh+hfh1))+(0.02*hfd1)+(0.01*hfo1)+(1.88*hfn1);//The enthalpy on the products side in MJ/kmol 
a2=0.04;//By trail and error method the degree of dissociation of H2O at 2400 K
hfh2=93.604;//The change in enthalpy of water at 2400 K in MJ/kmol
hfd2=66.915;//The change in enthalpy of hydrogen at 2400 K in MJ/kmol
hfo2=74.492;//The change in enthalpy of oxygen at 2400 K in MJ/kmol
hfn2=70.651;//The change in enthalpy of nitrogen at 2400 K in MJ/kmol
HP2=(0.96*(hfh+hfh2))+(0.04*hfd2)+(0.02*hfo2)+(1.88*hfn2);//The enthalpy on the products side in MJ/kmol 
H1=HP1-HR;//The total change in enthalpy at 2200 K in MJ/kmol
H2=HP2-HR;//The total change in enthalpy at 2400 K in MJ/kmol
Tl=[[[T2-T1]/[HP2-HP1]]*[HR-HP1]]+T1;//The required temperature in K

//Output
printf('The adiabatic flame temperature taking dissociation into account is %3.0f K',Tl)
