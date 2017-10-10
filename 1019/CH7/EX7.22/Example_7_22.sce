//Example 7.22
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
w2=17.1;//mass of sucrose in g
w3=9;//mass of urea in g
w4=6;//mass of urea in g
M2=342;//molecular mass of sucrose in g mol^-1
M3=180;//molecular mass of glucose in g mol^-1
M4=60;//molecular mass of urea in g mol^-1
T=300;//temperature in K
V=3;//volume in dm^3

//To determine the osmotic pressure and the weight average and number average molar mass
n2=w2/M2;//moles of sucrose
n3=w3/M3;//moles of glucose
n4=w4/M4;//moles of urea
x2=n2/(n2+n3+n4);//mole fraction of sucrose
x2=n3/(n2+n3+n4);//mole fraction of glucose
x2=n4/(n2+n3+n4);//mole fraction of urea
Mw=((w2*M2)+(w3*M3)+(w4*M4))/(w2+w3+w4);//mass average molar mass in g mol^-1
n1=n2+n3+n4;//moles of all solutes
pi=(n1*R*T)/V;//the osmotic pressure in atm
Mn=((w2+w3+w4)*R*T)/(pi*V);//number average molar mass in g mol^-1
mprintf('The mass average molar mass = %f gm mol^-1',Mw);
mprintf('\n The osmotic pressure = %f atm',pi);
mprintf('\n The number average molar mass = %f gm mol^-1',Mn);
//end