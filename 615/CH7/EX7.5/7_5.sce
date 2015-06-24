//water chemistry//
//example 7.5//
W1=144;//MgCO3 in water in mg/lit//
W2=25;//CaCO3 in water in mg/lit//
W3=111;//CaCl2 in water in mg/lit//
W4=95;//MgCl2 in water in mg/lit//
M1=100/84;//multiplication factor of MgCO3//
M2=100/100;//multiplication factor of CaCO3//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
P1=W1*M1;//MgCO3 in terms of CaCO3 or ppm//
P2=W2*M2;//CaCO3 in terms of CaCO3 or ppm//
P3=W3*M3;//CaCl2  in terms of CaCO3 or ppm//
P4=W4*M4;//MgCl2 in terms of CaCO3 or ppm//
V=50000;//volume of water in lit//
L=0.74*(2*P1+P2+P4)*V;
printf("Requirement of lime is %fmg",L);
S=1.06*(P1+P3+P4)*V;
printf("\nRequirement of soda is %fmg",S);
