// Prob 1.15
clc;
clear;
close;
format('v',7);
// Given data
P=1000//in KVA
VL=11000;//in volt
m=3;//no. of phase
Ra=3.5;//in ohm/phase
Xa=40;//in ohm/phase
Ia=P*1000/(VL*sqrt(3));//in Ampere
V=VL/sqrt(3);//in volt
cosfi=0.8;
fi=acosd(cosfi);//in degree
Va_resistance=Ia*Ra;//drop in resistance in volt
Va_reactance=Ia*Xa;//drop in reactance in volt
ER=sqrt(Va_resistance^2+Va_reactance^2);
tan_theta=Xa/Ra;//unitless
theta=atand(tan_theta);//in degree
//Part (a)
Eb=sqrt(V^2+ER^2-2*V*ER*cosd(theta));//in V/phase
Eline=sqrt(3)*Eb;//in Volt
disp(Eline,"(a) Induced emf(V) : ");
//Applying sine rule
alfa=asind(ER/Eb*sind(theta));//in degree
disp("Angular retardation "+string(floor(alfa))+" degree "+string(floor(60*(alfa-floor(alfa))))+"min");
//Part (b)
Eb=sqrt(V^2+ER^2-2*V*ER*cosd(theta-fi));//in V/phase
Eline=sqrt(3)*Eb;//in Volt
disp(Eline,"(b) Induced emf(V) : ");
//Applying sine rule
alfa=asind(ER/Eb*sind(theta-fi));//in degree
disp("Angular retardation "+string(floor(alfa))+" degree "+string(floor(60*(alfa-floor(alfa))))+"min");
//Part (c)
Eb=sqrt(V^2+ER^2-2*V*ER*cosd(theta+fi));//in V/phase
Eline=sqrt(3)*Eb;//in Volt
disp(Eline,"(c) Induced emf(V) : ");
//Applying sine rule
alfa=asind(ER/Eb*sind(theta+fi));//in degree
disp("Angular retardation "+string(floor(alfa))+" degree "+string(floor(60*(alfa-floor(alfa))))+"min");
//Note : Figure given in this question is not a plot. It is just drawn to represent data and can't be plotted.
//Note : Answers in the book is not as much accurate as calculated by Scilab.
