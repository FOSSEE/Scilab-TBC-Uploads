clc;
cp=0.846;//kJ/kg K
cv=0.657;//kJ/kg K

R=(cp-cv)*1000;
disp("the gas constant is:");
disp("N m/kg K",R);

R_=8314.5
m=R_/R;
disp("molar mass of the gas:");
disp("kg/k mole",m);
