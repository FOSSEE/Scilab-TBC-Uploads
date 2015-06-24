clc
//initialisation of variables
b= 1475.30 //kJ/kg
b0= 144.44 //kJ/kg
h2= 3448.6 //kJkg
h1= 860.5 //kJ/kg
k= 1.27 
k1= 1.34
R= 8.314 //J/mol K
hf= -393520 //kJ/kmol
hg= 72596 //kJ/kmol
Mc= 12 //kg
n= 1.2 //moles
n1= 3.76 //moles
M= 32 //gms
M1= 28 //gms
M2= 44 //gms
n2= 0.2 //moles
n3= 4.512 //moles
B1= 25592 //kJ/kmol C
B2= 394360 //kJ/kmol C
e= 0.008065
//CALCULATIONS
B= b-b0
Q= h2-h1
CpCO2= k*R/(k-1)
CpO2= k1*R/(k1-1)
Qcoal= (hg+hf)/Mc
mcoal= Q/(-Qcoal)
ncoal= mcoal/Mc
r= (n*M+n1*M1)/Mc
r1= (M2+n2*M+n3*M1)/Mc
mair= r*mcoal
mgas= r1*mcoal
Bfuel= (B1-B2)*e
Bnet= Bfuel+B
p= B*100/(-Bfuel)
//RESULTS
printf (' change in energy= %.2f kJ/kg ',B)
printf (' \n amount of air= %.3f kg/kg ',mair)
printf (' \n amount of gas= %.3f kg/kg ',mgas)
printf (' \n net change in energy= %.2f kg/kg steam ',Bnet)
printf (' \n percent energy in original fuel= %.2f percent ',p)
