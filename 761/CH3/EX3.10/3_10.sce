clc;
// page no 126
// prob no 3.10
f_car=8*10^6;f_mod1=2*10^3;f_mod2=3.5*10^3;
//Signal is LSB hence o/p freq is obtained by subtracting f_mod from f_car
f_out1=f_car-f_mod1; 
disp('MHz',f_out1/(10^6),'The o/p freq f_out1 is ');
f_out2=f_car-f_mod2; 
disp('MHz',f_out2/(10^6),'The o/p freq f_out1 is ');