//Example8.5//
Q=78.6*10^3;//J/mol //Activation energy
R=8.314;//J/mol //universal gas constant
T=323;//K //Kelvin //absolute temperature
T1=223;//K //Kelvin //absolute temperature
C=1/(%e^-((Q)/(R*T)))
mprintf("C = %e s^-1",C)
t50=C*(%e^-(Q/(R*T1)))
mprintf("\n t50 = %e s^-1",t50)
t=5.0*10^5;//s //seconds
a=1;//h //hour
b=3.6*10^3;//s //seconds
t1=t*(a/b)
mprintf("\n t1 = %i h  =5days, 20h (Answer calculated in the textbook is wrong)",t1)

