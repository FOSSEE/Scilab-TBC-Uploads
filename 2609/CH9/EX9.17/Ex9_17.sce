//Ex 9.17
clc;
clear;
close;
format('v',5);
fL=3;//kHz
fH=3.6;//kHz
Ap=-6;//Pass band gain
fc=sqrt(fH*fL)*1000;//Hz
BW=(fH-fL)*1000;//Hz
Q=fc/BW;//Quality factor
disp(Q,"Quality factor is ");
disp("Here 1<=Q<=12 criteria fulfills, hence it can be designed using single op-amp.");
disp("Various design parameters are :-");
C=0.01;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
//fc/Q=1/(%pi*R2*C)
format('v',4);
R2=1/%pi/(BW)/(C*10^-6)/1000;//kohm
disp(R2,"Resistance R2(kohm)");
format('v',5);
R1=-R2/(2*Ap);//kohm
disp(R1,"Resistance R1(kohm)");
R3=R1*1000/(4*%pi^2*R1*1000*R2*1000*(C*10^-6)^2*(fc)^2-1);//ohm
disp(R3,"Resistance R3(ohm)");
disp("Design Verification : ");
disp(2*Q^2>abs(Ap),"(i) Is 2*Q^2>|Ap| ?");
disp("For op-amp 741, GBW=1 MHz");
GBW=1;//MHz
disp(GBW*10^6>20*Q^2*fc,"Is GBW*10^6>20*Q^2*fc ?");
disp("2nd criteria failed. The op-amp should have higher GBW product. Use LF411");
