// Example  1.62

clc;clear;close;

// Given data
format('v',6)
VL=400;//in volt
f=50;//in Hz
I=100;//i Ampere

//calculations
//D.O.L starter
IL=I*sqrt(3);//in Ampere
disp(IL,"(i) The line current for direct on line starting in Ampere : ");
//In star delta starter
Vph=VL/sqrt(3);//in Volt
Iph=I/sqrt(3);//in Ampere
disp(Iph,"(ii) Starting phase current for star delta starting in Ampere : ");
disp(Iph,"(ii) Starting line current for star delta starting in Ampere : ");
//Auto transformer starter
K=70/100;//tapping of auto transformer
Vph=VL/sqrt(3);//in Volt
Vline=K*VL;//in volt
Ist_phase=Vline*I/VL;//in Ampere
disp(Ist_phase,"(iii) Starting phase current of motor in Ampere : ");
Ist_line=Ist_phase*sqrt(3);//in Ampere
disp(Ist_line,"(iii) Starting line current of motor in Ampere : ");
IsupplyLine=K*Ist_line;//in Ampere
disp(IsupplyLine,"(iii) Supply line current of motor in Ampere : ");
