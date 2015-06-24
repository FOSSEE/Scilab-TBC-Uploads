clear;
clc;

//Example - 14.4
//Page number - 461
printf("Example - 14.4 and Page number - 461\n\n");

//Given,
T = 300;//[K] - Temperature
b = 100;//[cal/mol]
R = 1.987;//[cal/mol*K] - Universal gas constant
// R*T*log(Y_1) = b*x_2^(2)
// R*T*log(Y_2) = b*x_1^(2)

//For equimolar mixture
x_1 = 0.5;//Mole fraction of component 1
x_2 = 0.5;//Mole fraction of component 2

//The excess Gibbs free energy is given by
// G_excess = R*T*(x_1*log(Y_1) + x_2*log(Y_2)) = b*x_1*x_2^(2) + b*x_2*x_1^(2) = b*x_1*(x_1 + x_2) = b*x_1*x_2
G_excess = b*x_1*x_2;//[cal/mol]

//The ideal Gibbs free energy change of mixing is given by,
delta_G_id_mix = R*T*(x_1*log(x_1)+x_2*log(x_2));//[cal/mol]

//The Gibbs free energy of mixing is given by
delta_G_mix = delta_G_id_mix + G_excess;//[cal/mol]

//It is given that entropy change of mixing is that of ideal mixture,therefore
// delta_S_mix = delta_S_id_mix = - R*sum(x_i*log(x_i))

//delta_G_mix = delta_H_mix - T*delta_S_mix = delta_H_mix + R*T*(x_1*log(x_1)+x_2*log(x_2))
delta_H_mix = b*x_1*x_2;//[cal/mol]

printf("The value of Gibbs free energy change for equimolar mixture formation is %f cal/mol\n\n",delta_G_mix);
printf("The value of enthalpy change for equimolar mixture formation is %f cal/mol\n\n",delta_H_mix);

//Work required for separation of mixture into pure components is
W = delta_G_mix;
printf("The least amount of work required for separation at 300 K is %f cal/mol\n\n",W);
