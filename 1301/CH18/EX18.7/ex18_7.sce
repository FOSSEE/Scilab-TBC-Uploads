clc;
c=3*10^8;      //velocity in m/sec
l=5*10^-7;    //wavelength in m
f=c/l;          //calculating frequency
disp(f,"Frequency in Hz = ");    //displaying reuslt
h=6.63*10^-34;  //planck's constant in J.sec
E=h*f;         //calculating energy
disp(E,"Energy in Joule = ");    //displaying reuslt
disp(E/(1.6*10^-19),"(a)Max. energy of photons that emerge = ");  //displaying result
