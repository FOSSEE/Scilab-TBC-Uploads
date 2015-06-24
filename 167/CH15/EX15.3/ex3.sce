//example 3
//Combustion of a Gaseous Fuel with Moist Air
clear
clc
x=0.75 //no. of moles of CO2 in the product
y=1.53 //no. of moles of H2O in the product
z=5.648 //no. of moles of N2 in the product
o=0.8 //relative humidity
Psat=2.3392 //Saturation pressure of water at 20C in kPa
Pvair=o*Psat //partial pressure of moisture in air
Ptotal=101.325 //Total pressure in kPa
Ndryair=6.97 //no.of kmol of dry air
Nvair=Pvair*Ndryair/(Ptotal*(1-Pvair/Ptotal)) //no. of moles of moisture in air
Ntotal=Nvair+Ndryair //total no.of kmol 
Pprod=101.325 //Pressure of products in kPa
Nvprod=y+0.131 //no. of kmol of H2O in products
Nprod=x+z+Nvprod //no. of kmol of products
Pvprod=Nvprod*Pprod/Nprod //partial pressure of water vapour in the combustion gases
disp('The dew-point temperature of the products is equal the saturation temp. of water at P=Pvprod. Therefore,')
Tdp=60.9 //in C
printf("\n Hence, the dew point temp. of products is = %.1f C. \n",Tdp);