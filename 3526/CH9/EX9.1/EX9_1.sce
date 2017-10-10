clc;funcprot(0);//EXAMPLE 9.1
//page 250
// Initialisation of Variables
deltaT=236;.......//Typical Undercooling for HomogeneousNucleation from the table 9-1 for cooper 
Tm=1358;.......//Freezing Temperature from the table 9-1 for cooper in degree celsius
deltaH=1628;.......// Latent Heat of Fusion from the table 9-1 for cooper in J/cm^3
sigma1=177*10^-7;.....//Solid-Liquid Interfacial Energyfrom the table 9-1 for cooper in J/cm^2
a0=3.615*10^-8;......//The lattice parameter for FCC copper in cm
//CALCULATIONS
r=(2*sigma1*Tm)/(deltaH*deltaT);......//Critical Radius of copper in cm
V=a0^3;....//Volume of FCC unit cell of copper in cm^3
V2=(4/3)*%pi*r^3;....//Critical volume of FCC copper 
N=V2/V;......//The number of unit cells in the critical nucleus 
Nc=4*round(N);......//Since there are four atoms in each unit cell of FCC metals
disp(r*10^8,"Critical Radius of copper in cm:")
disp(V,"Volume of FCC unit cell of copper in cm^3:")
disp(V2,"Critical volume of FCC copper :")
disp(round(N),"The number of unit cells in the critical nucleus :")
disp(Nc,"Since there are four atoms in each unit cell of FCC metals:")
