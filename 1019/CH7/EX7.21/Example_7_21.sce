//Example 7.21
clear;
clc;

//Given
R=82;//gas constant in atm cm^3 K^-1 mol^-1
w2=0.45;//mass of solute in g
M2=180;//molecular mass of the solute in g mol^-1
T=300;//temperature in K

//To determine the height attained by water inside the tube and the osmotic pressure
h=sqrt((w2*R*T*1013250)/(M2*980.67));//height attained by water inside the tube
pi=(980.67*h)/(1013250);//the osmotic pressure in atm
mprintf('The height attained by water inside the tube = %f cm',h);
mprintf('\n The osmotic pressure = %f atm',pi);
//end