// Example 12_4
clc;funcprot(0);
// Given data
// The volumetric analysis of the products on dry basis
CO_2=10.4// %
CO=1.2;// %
O_2=2.8;// %
N_2=85.6;// %

// Calculation
// The chemical equation is C_aH_b+c(O_2+3.76N_2)-->10.4CO_2+1.2CO+2.8O_2+85.6N_2+dH_2O
// Balancing each element,
a=10.4+1.2;// (C)
c=85.6/3.76;// (N)
d=(2*c)-(20.8+1.2+5.6);// (O)
b=2*d;// (H)
printf("\nThe chemical formula for the fuel is C_%2.1fH_%2.1f",a,b);
// The find the percent theoretical air from the actual chemical equation, C_11.6H_37.9+21.08(O_2+3.76N_2)-->11.6CO_2+18.95H_2O+79.26N_2
c_act=21.08;
P_ta=(c/c_act)*100;// The percent theoretical air in %
printf("\nThe percent theoretical air=%3.1f percentage",P_ta);
