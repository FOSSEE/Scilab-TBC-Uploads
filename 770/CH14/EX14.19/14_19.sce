clear;
clc;

//Example - 14.19
//Page number - 489
printf("Example - 14.19 and Page number - 489\n\n");

//given
P = 2;//[bar] - Pressure
T = 310;//[K] - Temperature
R=8.314;//[J/mol*K] - Universal gas constant
A = (0.1665 + 233.74/T);// Margules parameter
B = (0.5908 + 197.55/T);// Margules parameter

//two parameter Margules equation is given by
//G_excess/(R*T*x_1*x_2) = B*x_1 + A*x_2
//On simplification  and putting the values we get
//G_excess = ((0.5908 + 197.55/T)*x_1^(2)*x_2 + (0.1665 + 233.74/T)*x_2^(2)*x_1)


//H_excess/(R*T^(2)) = -[d/dT(G_excess/(R*T*x_1*x_2))]_P,x
//On simplification  and putting the values we get
//H_excess/(R*T^(2)) = (197.55/T^(2))*x_1^(2)*x_2 + (233.74/T^(2))*x_1*x_2^(2)

//We know that enthalpy change of mixing is given by
// delta_H_mix = H - x_1*H_1 - x_2*H_2 = delta_H_id_mix + H_excess

//But, delta_H_id_mix = 0 and H_excess is positive , therefore enthalpy of muxture
// H > (x_1*H_1 + x_2*H_2)
//Therefore heat is required during the formation of mixture

printf("Since enthalpy of mixture formation (H) comes out to be positive, threfore steam is required to maintain the constant temperature.");

