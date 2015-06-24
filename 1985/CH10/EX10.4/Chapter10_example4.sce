clc
clear
//Input data
E=100*10^3//Energy produced by the reactor in W
e=1.6*10^-19//Charge of electron in Coulumb
A=6.023*10^23//Avagadros number 
a=235//U235

//Calculations
Er=200//Let the energy released per fission be 200 MeV,
n=(E/(Er*10^6*e))//The number of U235 nuclei needed to produce 100kW of energy
m=((a*n)/(A*1000))/10^-9//Mass of 'n' atoms of U235

//Output
printf('The reactor consumes %3.5f*10^-9 kg of U235 in one second',m)
