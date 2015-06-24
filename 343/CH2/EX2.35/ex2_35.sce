clc
Z1=12.5+%i*21;          //Assigning values to parameters
V=50+%i*0;
I1=V/Z1;
I2=0.722-0.723*%i;
Z=V/I2;
Z2=Z-Z1;
[r,t]=polar(Z2);
disp("Ohms",r,"Impedance Z2");