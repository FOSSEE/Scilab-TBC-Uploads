clc;
close();
clear();
//page no 313
//prob no. 9.6
Vimax=16;  //Volts
Vomax=2;  //Volts
m=255;     //meu
vi=[2 4 8 16];
vo=Vomax*log(1+m*vi/Vimax)/log(1+m);
table=[vi' vo'];
mprintf(' vi(V)    vo(V)');
disp(table);
