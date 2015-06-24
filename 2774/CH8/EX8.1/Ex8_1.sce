clc
// solution
//initialization of variables
Ra=0.287 // specific gas constant for air
P=100 // pressure of room in kPa
V=150 // volume of room in m^3
T=25+273 // temperature of air in kelvin
phi=0.6 // relative humidity
Pg=3.29 // saturation vapour pressure in kPa at 25 *C from table C.1
Mv= 18 // molecular mass of water vapor
Ma=28.97 // molecular mass of air

Pv=Pg*phi // partial pressure of water vapour

Pa=P-Pv // partial pressure of air

w=0.622*(Pv/Pa) // humidity ratio in Kg of water/ Kg of dry air
Tdp=17.4 // dew point temperature from interpolation in table C.2 corresponding to partial pressure Pv=1.98 kPa

ma=Pa*V/(Ra*T) // mass of air
mv=w*ma // mass of water vapour in  kg

// now we find volume percentage
Nv=mv/Mv // moles of vapour
Na=ma/Ma // moles of air

Vw= Nv/(Na+Nv) // fraction of volume occupied by water vapour

printf(" The humidity ratio is %0.3f Kg water/ kg of dry air \n",w)
printf("The dew point is %0.1f degree celsius \n ",Tdp)
printf("The mass of water vapour in the air is %0.2f kg \n",mv)
printf("The volume percentage of the room that is water vapor is %0.2f %%",Vw*100)
// The answers are correct within given limits 
// The variation in answers is due to approximations made by
// textbook while scilab is precise





