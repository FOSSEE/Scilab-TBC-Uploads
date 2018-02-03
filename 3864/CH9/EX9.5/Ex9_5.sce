clear
//
//

//Initilization of Variables

D=200 //mm //External Diameter
t=20 //mm //hickness
d=200-2*t //mm //Internal Diameter
E=1*10**5 //N/mm**2
a=1*(1600)**-1 //Rankine's Constant
L=4.5 //m //Length
sigma=550 //N/mm**2 //Stress
FOS=2.5

//Calculations

//Moment of Inertia
I=%pi*D**4*64**-1-%pi*d**4*64**-1

//Both Ends are fixed

//Effective Length
l=1*2**-1*L*10**3 //mm

//Euler's Critical Load
P_E=%pi**2*E*I*(l**2)**-1

A=%pi*4**-1*(D**2-d**2) //mm*2

k=(I*A**-1)**0.5

//Rankine's Critical Load
P_R=sigma*A*(1+a*(l*k**-1)**2)**-1

X=P_E*P_R**-1 

//Safe Load using Rankine's Formula
S=P_R*(FOS)**-1*10**-3 //KN

//Result
printf("\n Safe Load by Rankines Formula is %0.2f  KN",S)
