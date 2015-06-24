clc;
vin1=0.05;
vout3=150;
Av1=20;
vin3=15;
Av=vout3/vin1;
disp(Av);
Av3=vout3/vin3;
disp(Av3);
Av2=Av/(Av3*Av1);
disp(Av2);
vin2=Av2/vin3;
disp('Vpk-pk',vin2*1,"vin2=");

