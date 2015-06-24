//example8
//exergy change during a compression process
clear
clc
P1=0.14 //MPa
T1=-10 //in celsius
h1=246.36 //kJ/kg
s1=0.9724 //kJ/kg-K
P2=0.8 //MPa
T2=50 //°C
h2=286.69 //kJ/kg
s2=0.9802 //kJ/kg-K
To=293 //in K
dw=h2-h1-To*(s2-s1) //exergy change of the refrigerant in kJ/kg
winmin=dw //the minimum work input that needs to be supplied to the compressor per unit mass of the refrigerant in kJ/kg
printf("\n Hence, the minimum work input that needs to be supplied to the compressor per unit mass of the refrigerant is = %.1f kJ/kg. \n",winmin);
