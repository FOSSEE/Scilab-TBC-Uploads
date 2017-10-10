clc;
e=1.6*10^-19;      //charge
h= 6.626 * 10^-34;
ke=1.5*10^4;            //kinetic energy in eV
KE=ke*e;         //calculating kinetic energy
m=9.1*10^-31;      //mass in kg
disp(KE,"Kinetic Energy in Joule = ");     //displaying result
v=sqrt((2*KE)/m);        //calculating velocity
disp(v,"Velocity in m/sec = ");      //displaying result
l=h/(m*v);    //calculating wavelength
disp(l,"Wavelength in metre = ");     h=6.63*10^-34;  //planck's constant in J.sec