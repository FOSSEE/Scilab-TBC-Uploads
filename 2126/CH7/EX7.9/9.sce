clc
clear

//input data
u=2800 //rocket speed in m/s
Cj=1400 //effective exhaust velocity in m/s
mp=5 //propellent flow rate in kg/s
q=6500 //heat of propellent per kg of propellant mixture in kJ/kg

//calculation
s=u/Cj //effective jet speed ratio
np=(2*s)/(1+s^2) //propulsive efficiency
F=Cj*mp*10^-3 //thrust in kN
Pt=F*10^3*u*10^-6 //Thrust power in MW, F in N
Pe=Pt/np //engine outputin MW
nth=Pe*10^3/(mp*q) //thermal efficiency, Pe in kW
no=np*nth //overall efficiency

//output
printf('(A)propulsive efficiency is %3.1f \n (B)propulsive power is %3.1f MW\n (C)engine outut is %3.1f MW\n (D)thermal efficiency is %3.4f \n (E)overall efficiency is %3.3f',np,Pt,Pe,nth,no)
