clc;
c=3*10^8;      //velocity in m/sec
l=2*10^-11;    //wavelength in m
f=c/l;          //calculating frequency
e=1.6*10^-19;   //in Coloumb
disp(f,"Frequency in Hz = ");    //displaying reuslt
h=6.63*10^-34;  //planck's constant in J.sec
V=(h*f)/e;         //calculating energy
disp(V,"operating Voltage in Volt = ");    //displaying reuslt
