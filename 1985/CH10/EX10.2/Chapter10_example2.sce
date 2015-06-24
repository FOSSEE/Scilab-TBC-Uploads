clc
clear
//Input data
E=200//Energy released in the fission of U235 in MeV
e=1.6*10^-19//Charge of electron in Coulumb
A=6.023*10^23//Avagadros number 
a=235//U235

//Calculations
x=(A/a)//Number of atoms in 1 gram of U235
E=((x*E*e*10^6)/(3.6*10^6))/10^4//Energy released by 1 gm of U235 in kWh

//Output
printf('Energy released by 1 gm of U235 is %3.2f*10^4 kWh',E)
