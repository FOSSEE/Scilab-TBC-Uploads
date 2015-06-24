clear;
clc;

//Example11.2[Effect of Fouling on the Overall Heat Transfer Coefficient]
//Given:-
k=15.1;//[W/m^2.degree Celcius]
Di=0.015;//Inner Diameter[m]
Do=0.019;//Outer Diameter[m]
Di_s=0.032;//Inner diameter of outer shell[m]
L=1;//[m]
hi=800;//W/m^2.degree Celcius
ho=1200;//[W/m^2.degree Celcius]
Rfi=0.0004;//[m^2.degree Celcius/W]
Rfo=0.0001;//[m^2.degree Celcius/W]
//Solution (a):-
Ai=%pi*Di*L;//[m^2]
Ao=%pi*Do*L;//[m^2]
Ra=(1/(hi*Ai))+(Rfi/Ai)+((log(Do/Di))/(2*%pi*k*L))+(Rfo/Ao)+(1/(ho*Ao));//[m^2.degree Celcius/W]
disp("m^2.degree Celcius/W",Ra,"The thermal Resistance for an unfinned shell and tube heat exchanger with fouling on both heat transfer surfaces is")
//Solution (b):-
Ui=1/(Ra*Ai);//[W/m^2.degree Celcius]
Uo=1/(Ra*Ao);//[W/m^2.degree Celcius]
disp("respectively","W/m^2.degree Celcius",Uo,"and",Ui,"The overall Heat transfer Coefficients based on the inner and outer surfaces of the tube are")