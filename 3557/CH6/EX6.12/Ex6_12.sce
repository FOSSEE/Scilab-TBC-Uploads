//Example 6.12//

s1=2;//MPa //MegaPascal
s2=1;//MPa //Megapascal
a=60;//days //relaxation time for a rubber band at 25 degree C
t=(a)*log(s1/s2)
mprintf("t = %f days",t)
Q=30*10^3;//J/mol //activation energy for the relaxation process
R=8.314;//J/(mol.K) // universal gas constant
T1=308;//K //Kelvin //absolute temperature
T2=298;//K //Kelvin //absolute temperature
t35=a*exp((Q/R)*((1/T1)-(1/T2)))
mprintf("\n t35 = %f days",t35)
