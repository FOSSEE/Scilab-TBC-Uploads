clc;
clear;
m1=0.3;
m2=0.4;
m3=0.5;
m4=0.6; //modulation indices
Pc=150;//power of carrier in Watts

mt=sqrt(m1^2+m2^2+m3^2+m4^2); //total modulation index

Pt=Pc*(1+mt^2/2);//Total transmitted power in Watts

Ps=(mt^2)*Pc/4; //Sideband Power in Watts

disp(mt,"Total Modulation index");

disp(Pt,"Total Transmitted Power (in W)");

//change in answer as compared to book ,due to approximation error..
disp(Ps,"Sideband Power(in W)")



