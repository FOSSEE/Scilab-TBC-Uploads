//Exa 7.2
clc;
clear;
close;
//Given data : 
format('v',6);
l=500;//in meter
i=1;//in Ampere/meter
IL1=200; IL2=150; IL3=50; IL4=100;//in Ampere
l1=100; l2=200; l3=300; l4=400;//in meter
r=0.1;//in ohm/km
Vd=250;//in volt
//Drop_AC=100*(r/10^3)*(I-i*l1/2);
//Drop_CD=I;
//Drop_DE=100*r*(I-550)-I*100/2;
//Drop_EF=100*r*(I-700-I*100/2);
//Drop_FB=100*r*(I-900-I*100/2);
//VD_tot=0.05*I-27;//in volts
disp("As the both ends are fed with same voltage, VD should be equal to zero.");
I=27/0.05;//in Ampere
disp(I,"Curent(in Ampere) :");
Drop_AD=(0.01*I-0.5)+(0.01*I-3.5);
disp(Vd-Drop_AD,"Value at minimum potential at D(in V) :");
//Note : Ans in the book is wrong as 27/0.05 gives 540 instead of 54.