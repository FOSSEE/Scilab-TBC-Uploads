T=273;//temperature 0C in kelvin//
R=8.31*10^7;//Universal gas constant in erg per degree per mole//
M=28;//molecular weight of N2 in gram per mole//
printf('Since 22.4Litres of Nitrogen gas at 0C and 1atm pressure will contain 6.023*10^23Molecules.');
N=2.69*10^19;//no. of molecules in molecules per cm^3//
G=3.78*10^-8;//collision diameter in cm//
K=sqrt(%pi*R*T/M);
Z11=2*N^2*G^2*K;//number of collisions per second of Nitrogen at 0C and 1atm//
printf('\nNumber of molecular collisions per second of Nitrogen at 0C and 1atm=%f=10.43*10^28molecular collisions per sec per cm^3',Z11);
