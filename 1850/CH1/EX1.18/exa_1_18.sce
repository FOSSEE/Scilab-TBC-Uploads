// Exa 1.18
clc;
clear;
close;
// Given data
format('v',7)
V_BE=0.7;// in volt
V_CC=9;// in volt
R1=12;// in k ohm
R1=R1*10^3;// in ohm
Bita=100;
Bita_1= Bita;
Bita_2=Bita;
Bita_3=Bita;
I_REF= (V_CC-2*V_BE)/R1;// in amp
disp(I_REF*10^3,"Reference current in mA");
I_out= I_REF/(1+2/(Bita*(1+Bita_3)));// in amp
disp(I_out*10^3,"Output current in mA");
I_C2=I_out;// in amp
disp(I_C2*10^3,"Collector current in mA");
I_C1= I_C2;
I_B3= I_REF-I_C1;// in amp
disp(I_B3*10^6,"Base current of transistor in micro amphere");
I_E3= I_B3*(1+Bita_3);// in  amp
disp(I_E3*10^6,"Emitter current of transistor in micro amphere");
I_B1= I_E3/2;// in amp
disp(I_B1*10^6,"Base current in micro amphere");
