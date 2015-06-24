clc;
//e.g 16.4
Vdc=30;
RL=600;
Rf=25;
Idc=(Vdc/RL);
disp('A',Idc*1,"Idc=");
Im=%pi*Idc;
disp('A',Im*1,"Im=");
Vin=Im*(Rf+RL);
disp('V',Vin*1,"Vin=");
