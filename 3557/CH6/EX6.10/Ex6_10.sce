//Example 6.10//

ap=5*10^-1;//percent per hour
Q=2*10^5;//J/mol //activation energy
R=8.314;//J/mol.K// universal gas constant
T=1273;//K //Kelvin //absolute temperature
T1=873;//given //absolute temperature
C=ap*%e^((Q)/(R*T))
mprintf("C = %e percent per hour",C)
//applying this amount to the service temprature yield
C1=C*%e^-((Q)/(R*T1))
mprintf("\n C1 = %e percent per hour",C1) 
