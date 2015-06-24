clc
clear 

//input data
P0=38*10^5 //combustion chamber pressure in Pa
T0=3500 //combustion chamber temperature in K
ma=41.67 //oxidizer flow rate in kg/s
MR=5 //mixture ratio
k=1.3 //adiabatic constant
R=287 //gas constant in J/kg-K
Pamb=0.0582*10^5 //ambient pressure in Pa
Pe=Pamb //exhaust pressure at sea level in Pa

//calculation 
mf=ma/MR //mass flow of fuel in kg/s 
mp=mf+ma //propellant mass flow in kg/s
Cp=(k*R)/(k-1) //specific heat at constant pressure in J/kg-k
p=P0/Pe //ratio of pressures at combustion chamber and exhaust 
Me=((((p^((k-1)/k))-1)*2)/(k-1))^0.5 //Mach number
t=1/(1+(((k-1)/2)*Me^2)) //ratio of exhaust temperature to combustion temperature
Te=t*T0 //exhaust temperature in Kelvin
a=(1/Me)*(((2/(k+1))+(((k-1)/(k+1))*Me^2))^((k+1)/(2*(k-1)))) //ratio of areas at exit section and throat section of the nozzle
Ce=(k*R*Te)^0.5*Me //exit velocity in the exhaust in m/s
Cj=Ce //average effective jet velocity in m/s, since Pe=Pamb
P1=P0*(2/(k+1))^(k/(k-1)) //pressure at throat section in Pa
T1=T0*(2/(k+1)) //temperature at throat section in K
d1=P1/(R*T1) //density of fuel at throat section in kg/m^3
C1=(k*R*T1)^0.5 //velocity at throat section in m/s
A1=(mp/(d1*C1))*10^4 //nozzle throat area in cm^2
Ae=a*A1 //exit area in cm^2
F=(mp*Ce)*10^-3 //thrust in kN
Cmax1=(2*Cp*T0)^0.5 //maximum possible velocity in m/s
Cf=(F*10^3)/(P0*A1*10^-4) //thrust coefficient, F in kN and A1 in m^2
Cch1=Cj/Cf //characteristic velocity in m/s

//output
printf('(A)nozzle throat area is %3.2f cm^2 \n (B)thrust is %3.1f kN \n (C)thrust coefficient is %3.2f \n (D)characteristic velocity is %3i m/s \n (E)exit velocity in exhaust is %3i m/s\n (F)maximum possible exhaust velocity is %3i m/s\n',A1,F,Cf,Cch1,Ce,Cmax1)

