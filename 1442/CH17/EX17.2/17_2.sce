clc
//initialisation of variables
T= 290 //K
xa= 0.4
xb= 0.6
P= 600 //kPa
V= 60 //L
R= 8.314 //J/mol K
Mp= 44 //kg/kmol
Mb= 58.12 //kg/kmol
vp= 0.00171 //m^3/kg
vb= 0.00166 //m^3/kg
na= 0.1 //kmol
nb= 0.15 //kmol
V1= 0.04000 //m^3
xa= 0.4 
np= 2
Vc= 0.1 //m^3
//CALCULATIONS
Pasat= %e^(14.435-(2255/T))
Pbsat= %e^(14.795-(2770/T))
P1= xa*Pasat+xb*Pbsat
Na1= P*V/(100*R*T)
Vp= vp*Mp
Vb= vb*Mb
V= na*Vp+nb*Vb
Vv= V1-V
nv= P1*Vv/(R*T)
ya= xa*Pasat/P
yb=1-ya
Na= na+ya*nv
Nb= nb+yb*nv
//RESULTS
printf (' initial pressure= %.2f kPa',P1)
printf (' \n moles of propane= %.5f kmol',Na1)
printf (' \n initial mole of propane= %.5f kmol',Na)
printf (' \n initial mole of butane= %.5f kmol',Nb)
printf (' \n numbar of phases= %.f ',np)
printf (' \n volume in final state= %.1f m^3',Vc)
