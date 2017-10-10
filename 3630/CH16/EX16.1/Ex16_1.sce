clc;
Vin=4.999;
Vref=5;
Vdiff1=Vin-Vref;
AoL=150000;
Vout1=AoL*Vdiff1;
V=10;
VoutL1=-V+1;
//asume RL>10000 ohm
Vin=5.001;
Vref=5;
Vdiff2=Vin-Vref;
Vout2=AoL*Vdiff2;
VoutL2=9;
//again asume RL.1000
disp('Noninverting input at +4.999', ," ");
disp('mV',Vdiff1*1000,"Vdif1=");
disp('V',Vout1,"Vout1=");
disp('V',VoutL1,"VoutL1=");
disp('Noninverting input at +5.001', ," ");
disp('V',Vout2,"Vout2=");
disp('V',VoutL2,"VoutL2=");
disp('mV',Vdiff2*1000,"Vdif1=");





