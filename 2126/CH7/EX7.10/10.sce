clc
clear

//input data
Cj=1250 //effective exhaust velocity in m/s
s=0.8 //effective jet speed ratio i.e. flight to jet speed ratio
ma=3.5 //oxidizer flow rate in kg/s
mf=1 //fuel flow rate in kg/s
g=9.81 //acceleration due to gravity in m/s^2
q=2500*10^3 //heat of propellent per kg of propellant mixture in J/kg

//calculation
u=s*Cj //flight velocity in m/s
mp=ma+mf //propellant mass flow in kg/s
F=Cj*mp*10^-3 //thrust in kN
wp=mp*g //weight flow rate of propellent in N/s
Is=(F*10^3)/(wp) //specific impulse in sec,F in N
np=(2*s)/(1+s^2) //propulsive efficiency
nth=0.5*mp*((Cj^2+u^2)/(mp*q)) //thermal efficiency
no=np*nth //overall efficiency

//output
printf('(A)thrust is %3.3f kN\n (B)specific impulse is %3.2f sec\n (C)propulsive efficiency is %3.4f \n (D)thermal efficiency is %3.4f \n (E)overall efficiency is %3.1f',F,Is,np,nth,no)
