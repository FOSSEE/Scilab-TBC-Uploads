clc
clear
//Input data
Ef=200//Energy released per fission in MeV
Er=32*10^6//Energy produced by the reactor in W
e=1.6*10^-19//Charge of electron in Coulumb

//Calculations
n=(Er/(Ef*10^6*e))/10^18//Number of U235 nuclei needed to produce an energy of 32*10^6 J/s *10^18

//Output
printf('%3.0f*10^18 U235 nuclei are needed to produce an energy of 32*10^6 J/s',n)
