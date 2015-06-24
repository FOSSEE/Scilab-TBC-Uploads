//chemical kinetics and catalysis//
//example 3.19//
T1=300;//temperature in kelvin//
t1=20;//half time of chemical reaction in min at T=300K//
k1=0.6932/t1;
printf("Rate constant of the reaction at T=300k is %f/min",k1);
T2=350;//temperature in kelvin//
t2=5;//half time of chemical reaction in min at T=350K//
k2=0.6932/t2;
printf("\nRate constant of the reaction at T=350k is %f/min",k2);
l=log10(k2/k1);
R=8.314;//value of constant R in J/K.mol//
E=l*2.303*R*T1*T2/(T2-T1);
printf("\nActivation energy of the reaction is %fJ/mol",E);