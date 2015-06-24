clc
//initialisation of variables
Pa= 40 //kPa
Pb= 50 //kPa
na= 2 //moles
nb= 6 //moles
//CALCULATIONS
a= Pb/Pa
xa= na/(na+nb)
xb= 1-xa
p= xa*Pa+xb*Pb
y= xa*Pa/p
ya= 1-y
Xa= a*xa/(1+(a-1)*xa)
Xb= 1-Xa
//RESULTS
printf (' Total pressure= %.1f kPa',p)
printf (' \n composition of vapour phase= %.4f ',y)
printf (' \n composition of vapour phase= %.4f ',ya)
printf (' \n composition of last drop of liquid= %.4f ',Xa)
printf (' \n composition of last drop of liquid= %.4f ',Xb)
