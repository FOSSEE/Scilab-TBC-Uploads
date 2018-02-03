clear
//
//

//Initilization of Variables

d=750 //mm //Diameter of shell
t=8 //mm //THickness
p=2.5 //N/mm**2
E=2*10**5 //N/mm**2
mu=0.25 //Poissons ratio

//Calculations

//Hoop stress
f1=p*d*(4*t)**-1 //N/mm**2
f2=p*d*(4*t)**-1 //N/mm**2

//Change in Diameter
dell_d=d*p*d*(1-mu)*(4*t*E)**-1 //mm

//Change in Volume
dell_V=3*p*d*(1-mu)*(4*t*E)**-1*%pi*6**-1*d**3

//Answer for Change in diameter is incorrect in book

//Result
printf("\n Stress introduced is %0.2f  N/mm**2",f1)
printf("\n Change in Diameter is %0.2f  N/mm**2",dell_d)
printf("\n Change in Volume is %0.2f  mm**3",dell_V)
