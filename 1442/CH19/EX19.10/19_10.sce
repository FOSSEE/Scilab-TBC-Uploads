clc
//initialisation of variables
T= 25 //C
R= 8.314 //Jmol K
k= 1.27
k1= 1.34
hf= -393520 //kJ/kmol
M= 28 //gms
gf= -394360 //kJ/kmol
M= 12 //gms
//CALCULATIONS
T1= T+(-hf/((R)*((k/(k-1))+(0.2+4.5144)*(k1/(k1-1)))))
Bin= 0
dh= (k1*R/(k1-1))*(T1-T)
dh1= (k1*R/(k1-1))*log((273.15+T1)/(273.15+T))
H= dh-(273.15+T)*dh1
h= (k*R/(k-1))*(T1-T)+hf
h1= (k*R/(k-1))*log((273.15+T1)/(273.15+T))+((hf-gf)/(273.15+T))
h2= h-(273.15+T)*h1
Bout= (h2+(0.2+4.5144)*H)/M
//RESULTS
printf (' outlet temperature= %.2f C ',T1)
printf (' \n energy of formation= %.f J ',Bin)
printf (' \n energy at outlet= %.f kJ/kmol ',H)
printf (' \n energy of the products= %.f k ',Bout)
