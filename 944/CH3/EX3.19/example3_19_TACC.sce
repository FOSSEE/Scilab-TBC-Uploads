//example 3.19

clear;
clc;

//Given:
H1=-84.68;//heat of formation : 2C(s)+3H2(g)->C2H6(g) [KJ/mol]
H2=2*716.68;//heat of formation : 2C(s)->2C(g) [KJ]
H3=3*436;//heat of formation : 3H2(g)->6H(g) [KJ]
H4=412;//taking it as bond energy for one C-H bond[KJ/mol]


//to find the C-C bond energy in ethane bond
H=H2+H3-H1;//heat of reaction : C2H6(g)->2C(g)+6H(g) [KJ/mol]
H5=H-6*H4;//bond energy for one C-C bond in ethane bond [KJ/mol]
printf("\n Hc-c(bond energy for one C-C bond in ethane bond)=%f KJ/mol.\n",H5);
