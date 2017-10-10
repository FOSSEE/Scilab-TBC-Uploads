//Calculate the mass of Oxygen

//Example 2.2

clc;

clear;

PT=758;    //Total partial pressure in torr

PH2O=19.8;   //Partial pressure of water in torr

PO2=(PT-PH2O)*0.00131579;    //Partial pressure of oxygen in torr

V=0.186;   //Volume of oxygen in Litre

M=32;   //Molar mass of oxygen in g/ mol

R=0.08206;  //Gas constant in L atm K^-1 mol^-1

T=295;   //Tempreture in kelvin

m=(PO2*V*M)/(R*T); //Mass of the Oxygen molecule in g

printf("Mass of Oxygen molecule = %.3f g",m);
 
