clc 
clear

//input data
mp=193 //propellent flow rate in kg/s
P1=27*10^5 //pressure at throat section in Pa
T1=3000 //temperature at throat section in K
de=0.6 //nozzle exit diameter in m
Pe=1.1*10^5 //exhaust pressure in Pa
Pamb=1.013*10^5 //ambient pressure in Pa
F=380*10^3 //thrust of motor in N
u=694.44 //flight velocity in m/s
g=9.81 //acceleration due to gravity in m/s^2
q=6500*10^3 //heat of propellent per kg of propellant mixture in J/kg

//calculation
Ae=(%pi*0.6^2)/4 //exit area in m^2
Cj=F/mp //average effective jet velocity in m/s
Ce=(F-((Pe-Pamb)*Ae))/mp //exhaust velocity in m/s, wrong answer in textbook
wp=mp*g //weight flow rate of propellent in N/s
Is=(F)/(wp) //specific impulse in sec
SPC=(wp/F)/10^-3 //specific propellent consumption in sec^-1 *10^-3
Pt=F*u*10^-6 //Thrust power in MW
Pl=(0.5*mp*((Cj-u)^2))*10^-6 //Power loss in exhaust in MW
Pe=Pt+Pl //engine output in MW
np=Pt/Pe //propulsive efficiency
nth=Pe*10^3/(mp*q*10^-3) //thermal efficiency and Pe,q in kW
no=np*nth //overall efficiency

//output
printf('(A)effective jet velocity is %3.4f m/s\n (B)Actual jet velocity is %3.4f m/s\n (C)specific impulse is %3.1f sec\n (D)specific propellent consumption is %3.4f*10^-3 sec^-1\n (E)propulsive efficiency is %3.5f \n (D)thermal efficiency is %3.3f \n (E)overall efficiency is %3.5f',Cj,Ce,Is,SPC,np,nth,no)
