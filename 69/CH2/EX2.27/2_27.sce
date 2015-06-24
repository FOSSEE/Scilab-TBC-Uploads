
clear; clc; close;

R = 10^(3);
Vz = 10;
Vi = 50;
Izm = 32*10^(-3);
Pz = 380*10^(-3);

Rlmin = (R*Vz)/(Vi-Vz);
Vr = Vi-Vz;
Ir = Vr/R;
Ilmin = Ir - Izm;
Rlmax = Vz/Ilmin;
Pmax = Vz*Izm;
Izm_2 = Pz/Vz;
Ilmin_2 = Ir - Izm_2;

disp(Rlmin,'Lowest value of R : ' ); 
disp(Rlmax,'Max value of R : ' );
disp(Ilmin,'Min value of I : ');
disp(Pmax,'Maximum wattage rating of diode : ')
disp(Ilmin_2,'New min value of I : ');
