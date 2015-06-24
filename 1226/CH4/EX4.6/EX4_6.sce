clc;funcprot(0);//EXAMPLE 4.6
// Initialisation of Variables
r=10;......................//Compression ratio
C=48000;..................//Calorific value of fuel used in kJ/kg
afr=15;...................//Air fuel ratio
t1=330;....................//Temperature of the charge at the end of the stroke in Kelvin
p1=1;......................//Pressure of the charge at the end of the stroke in bar
n=1.36;....................//Index of compression
cv=0.7117;......//Specific heat constant at constant volume in kJ/kgK
k=2.1*10^(-4);
//Calculations
p2=p1*(r)^n;
t2=t1*((p2/p1)^((n-1)/n));
ha=C/(afr+1);......................//Heat added per kg of charge in kJ
t3=((-2*cv)+sqrt((4*cv*cv)+(4*k*((2*cv*t2)+(k*t2*t2)+(2*ha)))))/(2*k);
p3=(p2*t3)/t2;.............................//Max pressure for constant volume process in bar
P3=p2*((ha/cv)+t2)/t2;.....................//Max pressure for constant specific heat in bar
disp(p3,"Max pressure in the cylinder (in bar):")
disp(P3,"Max pressure for constant specific heat (in bar):")
