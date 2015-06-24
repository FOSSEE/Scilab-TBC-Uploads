//chemical kinetics and catalysis//
//example 3.17//
T1=27;//initial temparature in C//
T1=T1+273;//in kelvin//
Tr=10;//rise in temparature//
T2=T1+Tr;//final temparature in kelvin//
r=2;//ratio of final to initial rates of chemical reactions(k1/k2)//
R=8.314;//value of constant R in J/K.mol//
E=log(r)*R*T1*T2/Tr;//from equation k=A*e^(-E/R*T)//
printf("Activation energy of the reaction is %fKJ/mol",E);
