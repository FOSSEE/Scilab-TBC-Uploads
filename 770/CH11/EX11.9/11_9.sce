clear;
clc;

//Example - 11.9
//Page number - 395
printf("Example - 11.9 and Page number - 395\n\n");

//Given
n = 1*10^(3);//[mol] - No of moles
P = 0.1;//[MPa] - Pressure of the surrounding
T = 300;//[K] - Temperature of the surrounding
x_1 = 0.79;//Mole fraction of N2 in the air
x_2 = 0.21;//Mole fraction of O2 in the air
R=8.314;//[J/mol*K]

//Change in availability when x_1 moles of component 1 goes from pure state to that in the mixture is
//x_1*(si_1 - si_2) = x_1*[H1 - H1_bar - T_0*(S1 - S1_bar)]
//Similarly change in availability of x_2 moles of component 2 is
//x_2*(si_1 - si_2) = x_2*[H2 - H2_bar - T_0*(S2 - S2_bar)]

//and thus total availability change when 1 mol of mixture is formed from x_1 mol of component 1 and x_2 mol of component 2 is equal to reversible work
//W_rev = x_1*[H1 - H1_bar - T_0*(S1 - S1_bar)] + x_2*[H2 - H2_bar - T_0*(S2 - S2_bar)]
//W_rev = -[x_1*(H1_bar - H1) + x_2*(H2_bar - H2)] + T_0*[x_1*(S1_bar - S1) + x_2*(S2_bar - S2)]
//W_rev =  -[delta_H_mix] +T_0*[delta_S_mix]

//If T = T_0 that is,temperature of mixing is same as that of surroundings, W_rev = -delta_G_mix.
//W_rev = -delta_G_mix = R*T*(x_1*log(x_1) + x_2*log(x_2))
W_rev = R*T*(x_1*log(x_1) + x_2*log(x_2));//[J/mol]

//Therefore total work transfer is given by
W_min = (n*W_rev)/1000;//[kJ]

printf("The minimum work required is %f kJ",W_min);
