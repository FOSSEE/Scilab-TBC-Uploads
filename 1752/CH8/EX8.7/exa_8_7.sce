//Exa 8.7
clc;
clear;
close;
//given data
// (a) For parallel flow arrangment
del_t1=60-10;// in degree C
del_t2=40-30;// in degree C
del_tm=(del_t1-del_t2)/log(del_t1/del_t2);// in degree C
q=100*10^3;// in W
U=75;// in W/m^2 degree C
// Formula q=U*A*del_tm;
A=q/(U*del_tm);
disp(A,"Area for paraller flow arrangment in square meter");
// (b) For counter flow heat exchange
del_t1=60-30;// in degree C
del_t2=40-10;// in degree C
// In this case
del_tm=(del_t1+del_t2)/2;// in degree C
A=q/(U*del_tm);
disp(A,"Area For counter flow heat exchange in square meter");
disp("In counter flow arrangment less area is required for the above purpose")