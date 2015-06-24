
clc
clear
//Input data
Tc=1250+273//Cathode temperature in K
Ta=500+273//Anode temperature in K
e=1.602*10^-19//Charge in coloumb
K=1.38*10^-23//Boltzmann constant in J/molecule.K
b=18//Constant

//Calculations
Va=((b*K*Ta)/e)//Voltage of anode in V
Vc=((b*K*Tc)/e)//Voltage of cathode in V
Vo=Vc-Va//Output voltage in V
Ja=(120*Ta^2*exp(-b))//Current density in Cathode in A/cm^2
Jc=(120*Tc^2*exp(-b))//Current density in Anode in A/cm^2
P=Vo*(Jc-Ja)//Power output per unit area in /cm^2
nth=(((Tc-Ta)/Tc)*(b/(b+2)))*100//Thermal efficiency in percent

//Output
printf('(a) The output voltage is %3.4f V \n (b) The current density in the cathode is %3.3f A/cm^2 and anode is %3.3f A/cm^2 \n (c) Power output per unit area is %3.2f W/cm^2 \n (d) Thermal efficiency is %3.1f percent',Vo,Jc,Ja,P,nth)
