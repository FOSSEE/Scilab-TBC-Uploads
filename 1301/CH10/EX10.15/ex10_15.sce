clc;
k=1.38*10^-23;        //Boltzmann's constant in J/K
t=100+273;            //temperature in Kelvin
m=5.3*10^-26;         //mass of oxygen molecule in kg
v=sqrt((3*k*t)/m);     //calculating average velocity using kinetic theory of gases.
disp(v,"Average velocity of molecules in m/sec = ");   //displaying result