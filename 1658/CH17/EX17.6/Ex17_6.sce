clc;
//e.g 17.6
Ton=30*10**-3;
Toff=10*10**-3;
Vdc=200;
a=Ton/(Ton+Toff);
disp(a);
Vl=Vdc*a;
disp('V',Vl*1,"Vl=");
