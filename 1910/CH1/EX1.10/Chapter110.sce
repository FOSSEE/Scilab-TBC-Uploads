// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 10")
//The spacecraft panel has thickness(L)=.01 m
//The spacecraft has inner temprature (Ti)=298 K
//The spacecraft has outer temprature(T2)
//The panel is exposed to deep space where temprature(To)= 0K
//The material has Thermal conductivity(k)= 5.0 W/(m*K)
//The emissivity(emi)=0.8
//The inner surface of the panel is exposed to airflow resulting in an average heat transfer coefficient(hbri)=70 W/(m^2*K)
L=.01;
Ti=298;
To=0;
k=5;
emi=0.8;
hbri=70;
//The stefan Boltzman constant(sigma)= 5.67*10^-8 W/(m^2/K^4)
sigma=5.67*10^-8;
//Heat transfer from the outer surface takes place only by radiation is given by  Q/A=emi*sigma*(T2^4-T0^4)in W/m^2=F1
//heat transfer from the outer surface can also be written as Q/A=(Ti-To)/((1/hbri)+(L/k)+(1/hr))=F2
//Radiation heat transfer coefficient(hr) is defined as Q/A=hr(T2-To)
//so hr=4.536*10^-8*T2^3
disp("Heat transfer from the outer surface takes place only by radiation is given by Q/A=F1=emi*sigma*(T2^4-T0^4)in W/m^2 for different values of tempratures in K")
disp("heat transfer from the outer surface can also be written as Q/A=F2=(Ti-To)/((1/hbri)+(L/k)+(1/hr)) in W/m^2 at different tempratures in K" )
disp("The values of temprature that are considered are <298 K")
for (i=285:292)
    T2=i,hr=4.536*10^-8*T2^3; F1=emi*sigma*(T2^4-To^4),F2=(Ti-To)/((1/hbri)+(L/k)+(1/hr))
end
if F1==F2 then T2=i
    else T2=292.5,hr=4.536*10^-8*T2^3; F1=emi*sigma*(T2^4-To^4),F2=(Ti-To)/((1/hbri)+(L/k)+(1/hr))
end
disp("Satisfactory solutions for Temprature in K is")
disp(Temprature = T2)
disp("Approximate Rate of Heat Transfer in W/m^2 is")
disp(332)










