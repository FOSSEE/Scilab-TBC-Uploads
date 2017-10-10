clear;
clc;
Nd=10^14 //in cm^-3
myu_n=3900 //in cm^2/V
e=1.6*10^-19 //in J

//Calculation
p=1/(Nd*e*myu_n)

mprintf("Resistivity of the sample p= %.2f ohm-cm",p)

