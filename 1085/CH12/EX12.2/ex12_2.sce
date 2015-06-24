//Exam:12.2
clc;
clear;
close;
W=0.0243;//1 mole of magnesium weight(in Kg)
C=2*96490;//used charge (in A-s)
A=15*10^(-3);//current density (in A/metre2)
t=10;//time (in years)
T=10*365*24*3600;//time (in sec)
//amount of magnesium required =charge required per m2 of hull surface for a design life of 10 years/(used charge for anode)
Mg_required=W*A*T/C;//magnesium required per square meter of the hull surface for a design life of 10 years
disp(Mg_required,'magnesium required per square meter of the hull surface for a design life of 10 years(in Kg/m2)=');