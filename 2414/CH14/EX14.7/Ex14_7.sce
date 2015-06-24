clc;
close();
clear();
//page no 480
//prob no. 14.7;
Rin=50   //ohm
Rout=50;   //ohm
Vrms=400;  //V
Zin=Rin;
mprintf('(a)The input impedance is, Zin = %i ohm\n',Zin);
Irms=Vrms/(Rin+Rout);  //A
mprintf(' (b)The rms current , Irms = %i A \n',Irms);
Pin=Irms^2*Rin;
mprintf(' (c)The input power is, Pin = %i W \n',Pin);
Pl=Pin;
mprintf(' (d)The load power is, Pl = %i W \n',Pl);
