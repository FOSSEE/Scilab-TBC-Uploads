clc
Za=10+%i*8;                //Assigning values to parameters
Zb=9-%i*6;
Zc=3+%i*2;
V2=100;
I=V2/Zc;
Ia=(I*Zb)/(Za+Zb);
Ib=I-Ia;
disp("Amperes",Ia,polar(Ia),"Current Ia");
disp("Amperes",Ib,polar(Ib),"Current Ib");