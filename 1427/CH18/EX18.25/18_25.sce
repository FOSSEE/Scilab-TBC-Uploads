//ques-18.25
//Calculating pressure at which water must be heated to produce superheated steam
clc
Hv=540;//latent heat of vapourization (in cal/g)
T1=273+100; T2=273+150;//temperature (in K)
P1=1;//in atm
R=1.987;//cal/mol/K
//On solving, log(P2/P1) = (Hv*(T2-T1))/(2.303*R*T1*T2)
P2=P1*4.709
printf("The required vapour pressure is %.3f atm.",P2);
