clc;
//e.g 17.5 
Ton=30*10**-6;
Toff=10*10**-6;
//consider duty cycle=a
a=Ton/(Ton+Toff);
disp(a);
f=(1/(Ton+Toff))
disp('kHZ',f*10**-3,"f=");
