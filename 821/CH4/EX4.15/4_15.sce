T=273;//temperature 0C in kelvin//
R=8.31*10^7;//Universal gas constant in erg per degree per mole//
M=28;//molecular weight of N2 in gram per mole//
printf('Since 22.4Litres of Nitrogen gas at 0C and 1atm pressure will contain 6.023*10^23Molecules.');
N=2.69*10^19;//no. of molecules in molecules per cm^3//
Cm=sqrt(8*R*T/(%pi*M));//mean velocity of Nitrogen in cm/sec//
printf('\nMean velocity of Nitrogen=Cm=%fcm/sec',Cm);
V=22400;//volume of nitrogen in cm^3//
p=M/V;//Density of nitrogen in gram per cm^3//
printf('\nDensity of Nitrogen=p=%f=1.25*10^-3gram per cm^3',p);
n=10.99*10^-5;//Viscosity of N2 in poise//
L=(3*n)/(Crms*p);//mean free path of nitrogen in cm//
printf('\nMean free path of Nitrogen=L=5.81*10^-6cm');
G=sqrt(1/(1.414*%pi*L*N));//Collision diameter of Nitrogen in cm//
printf('\nCollission diameter of Nitrogen=G=3.80*10^-8cm');
K=sqrt(%pi*R*T/M);
Z11=2*N^2*G^2*K;//number of collisions per second of Nitrogen at 0C and 1atm//
printf('\nNumber of molecular collisions per second of Nitrogen at NTP=%f=10.52*10^28molecular collisions per sec per cm^3',Z11);
