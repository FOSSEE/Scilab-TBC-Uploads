//example 1.2
clc; funcprot(0);
e=0.72;
w=12/100; //moisture content
Gs=2.72;
Gammaw=9.81;//kN/m^3
Gammad=Gs*Gammaw/(1+e);
disp(Gammad,"dry unit weight in kN/m^3");
Gamma=Gs*Gammaw*(1+w)/(1+e);
disp(Gamma,"moist unit weight in kN/m^3");
Gammasat=(Gs+e)*Gammaw/(1+e);
wa=Gammasat-Gamma;//water added
disp(wa,"water added in kN/m^3");

