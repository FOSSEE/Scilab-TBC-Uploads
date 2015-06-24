clc
//initialisation of variables
Ds= 16.5 //kN/m^3
S= 19.25 //kN/m^3
g= 9.8 //kN/m^3
h1= 6 //m
h2= 13 //m
//at point A
Sa= 0
Ua= 0
Sa1= 0
//at point B
Sb= h1*Ds
Ub= 0 
Sb1= Sb-Ub
//at point C
Sc= h1*Ds+h2*S
Uc= h2*g
Sc1= Sc-Uc
//results
printf ('total pressure at C= % 2f kN/m^3 ',Sc)
printf ('pore water pressure at C = % 2f kN/m^3 ',Uc)
printf ('effective stress at point C= % 2f kN/m^3 ',Sc1)

