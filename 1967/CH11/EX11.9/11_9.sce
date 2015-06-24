clc
//initialisation of variables
clear
T= 25 //C
R= 8.314*10^7 //ergs /mol K
st= 72 //dynes cm^-1
mv= 18 //cc mole^-1
r= 10^-5 //cm
p= 23.76 //cm
//CALCULATIONS
p1= p*10^(2*st*mv/(r*R*2.303*(273.2+T)))
//RESULTS
printf ('vapour pressure = %.2f mm',p1)
