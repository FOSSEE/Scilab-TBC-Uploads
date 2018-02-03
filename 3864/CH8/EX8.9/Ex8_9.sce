clear
//
//

//Initilization of Variables

L=1000 //mm //Length of shell
d=200 //mm //Diameter
t=6 //mm //Thickness
p=1.5 //N/mm**2 //Internal Pressure
E=2*10**5 //N/mm**2
mu=0.25 //Poissons Ratio

//Calculations

//Change in Volume of sphere
dell_V_s=3*p*d*(1-mu)*(4*t*E)**-1*%pi*6**-1*d**3

//Hoop stress
f1=p*d*(2*t)**-1 //N/mm**2

//Longitudinal stress
f2=p*d*(4*t)**-1 //N/mm**2

//Principal strain
e1=(f1-mu*f2)*E**-1
e2=(f2-mu*f1)*E**-1

V_c=1000 //mm**3

//Change in Volume of cyclinder
dell_V_c=(2*e1+e2)*%pi*4**-1*d**2*L

//Total Change in Diameter
dell_V=dell_V_s+dell_V_c //mm**3

//Result
printf("\n Change in Volume is %0.2f  mm**3",dell_V)
