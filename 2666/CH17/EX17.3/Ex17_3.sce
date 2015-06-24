clc
//initialisation of variables
clear
p= 95 //psi
m= 0.42 //lb
hv= 19200 //Btu per lb
v= 270 //cu ft
hv1= 2544 //per lb
//CALCULATIONS
hv2= hv/v
Bte= 100*hv1/(m*hv)
ve= p*144*100/(hv2*0.01*Bte*778)
//RESULTS
printf (' Volume efficiency = %.1f percent',ve)
