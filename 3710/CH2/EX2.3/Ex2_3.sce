//Example 2.3, Page Number 60
//Effective Density Calculation
clc;

m=9.1*(10**-31) //Mass of electron in kilogram
me=0.55*m //Effective mass
T=300 //Temperature in Kelvin
k=1.38*(10**-23) //Boltzmann Constant in meter square kilogram per second square Kelvin
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second

//From equation 2.33
N=2*(((2*%pi*me*k*T)/(h*h))**1.5) //N is the Effective density of states in the conduction band

mprintf("The Effective Density of States in the Conduction Band is %.2e Per Meter Cube",N);
