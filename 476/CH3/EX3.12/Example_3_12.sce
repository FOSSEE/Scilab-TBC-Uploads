//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 12


clear;
clc;


//Given:
Ho = -164987; //standard heat of reaction at 298 K in J
T1 = 298;
T2 = 773; //temperature(K)

//To calculate standard heat of reaction at 773 K
alpha = (2*29.16)+13.41-26.75-(4*26.88);
betta = ((2*14.49)+77.03-42.26-(4*4.35))*10^-3;
gama = ((2*-2.02)-18.74+14.25+(4*0.33))*10^-6;

//Using equation 3.54 (Page no. 67)
H1 = Ho-(alpha*T1)-(betta*(T1^2)/2)-(gama*(T1^3)/3);

//At 773 K
Hr = H1+(alpha*T2)+(betta*(T2^2)/2)+(gama*(T2^3)/3);
mprintf('Heat of reaction at 773 K is %f kJ',Hr/1000);

//end