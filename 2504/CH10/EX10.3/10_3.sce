clc
//initialisation of variables
clear
v1= 10 //ft/sec
v2= 9 //ft/sec
a= 1.02
r= 5.95
//CALCULATIONS
ca= (v1/v2)^2
Cd= r*(ca-1+2-2*ca)+2*a*ca
//RESULTS
printf ('Drage coeffcieicnt = %.2f',Cd)
