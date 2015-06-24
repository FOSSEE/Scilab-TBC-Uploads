clc
// initialization of variables
T1=300 // initial temperature in degree celsius
T2=700 // final temperature in degree celsius
P=150// pressure in kPa
m=3 // mass of steam in kg

// solution
// part (a)

delH=m*integrate('2.07+(T-400)/1480','T',T1,T2) // expressing as function of temperature and integrating
printf(" The change in Enthalpy is "+string(delH)+" kJ \n")
 
// part(b)
CPavg=delH/(m*(T2-T1)) // avg value of specific heat at constant pressure
printf(" The average value of Cp is "+string(CPavg)+" kJ/kg.*C")
