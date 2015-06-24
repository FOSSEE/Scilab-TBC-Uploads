//chemical kinetics and catalysis//
//example 3.21//
Ti=27;//given temperature in C//
T1=Ti+273;//in kelvin//
Tr=10;//rise in temperature//
T2=T1+Tr;
k=3;//value of k1/k2//
R=8.314;//value of constant R in J/K.mol//
E=log(k)*R*T1*T2/(T2-T1);
printf("Activation energy of the reaction is %fJ/mol or %fKJ/mol",E,E/1000);