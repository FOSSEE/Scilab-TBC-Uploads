//Exa 8.15
clc;
clear;
close;
//given data
U=1800;// in W/m^2 degree C
h_fg=2200*10^3;// in J/kg
t_ci=20;// in degree C
t_co=90;// in degree C
del_t1=120-20;// in degree C
del_t2=120-90;// in degree C
del_tm=(del_t1-del_t2)/log(del_t1/del_t2);// in degree C
Mc=1000/3600;// in kg/s
Cc=4180;// in kg/s
// Rate of heat transfer
q=Mc*Cc*(t_co-t_ci);// in watt
// Formula q=U*A*del_tm
A=q/(U*del_tm);
disp(A,"Surface area in square meter");
//Rate of condensation of steam
ms=q/h_fg;// in kg/sec
disp(ms,"Rate of condensation of steam in kg/sec");

