//Example 5.2, Page Number 176
//Relative Populations of energy levels
clc;
T=300 //Given Room Temperature in Kelvin
l=550*(10**-9) //Average Wavelength of Visible Radiation in meter
h=6.6*(10**-34) //Planck's Constant in meter square kilogram per second
c=3*(10**8) //Speed Of Light in meters per second
k=1.38*(10**-23) //Boltzman Constant in meter square kilogram per second square Kelvin 
e=1.6*(10**-19) //Charge of an Electron in Coulombs

E=(h*c)/l //E is the given Energy Difference
E1=E/e

N=exp((-1*E)/(k*T)) //N is the ratio of N2 and N1

mprintf("\tThe Given Energy Difference of the Two Levels is %.2f eV\n",E1);

mprintf("\tThe Relative Population of the Energy Levels is %.2e\n",N);
//The minor difference arising is due to a round off error
