//ques8
//Approximating Compressed Liquid as Saturated Liquid
clc
u1=333.82;//(a) internal energy in KJ/Kg @ P=5MPa and T=80 C from table A-7
printf("\n(a) Data as from compress liquid table, u= %.2f kJ/kg\n",u1);
u2=334.97;//(b)internal energy in KJ/Kg @80 C from table A-4
printf("(b) Data as from saturated liquid table, u = %.2f kJ/kg",u2);
er=(u2-u1)/u1*100;//(c) %age error
printf('\n(c)Error involved = %.2f percent',er);
