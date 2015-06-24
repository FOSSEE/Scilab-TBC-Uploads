clc;
close();
clear();
//page no 481
//prob no. 14.8
Rin=50   //ohm
Rout=50;   //ohm
Vrms=400;  //V

l=50;      //m
Ldb=.01*l;   //dB
L=10^(Ldb/10);
mprintf('The abslute loss is, L = %f \n',L);
Irms=Vrms/(Rin+Rout);  //A
Pin=Irms^2*Rin;

PL=Pin/L;
mprintf(' The actual Power reaching the load is, PL = %.1f W \n',PL);
