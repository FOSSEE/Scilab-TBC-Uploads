//Example 11.10

clear;

clc;

VI=8;

Pmax=12;

Isc=Pmax/VI;

VBE=0.7;

Rsc=VBE/Isc;

printf("(a) Isc=%.1f A",Isc);

printf("\n    Rsc=%.2f ohms",Rsc);

vO=5;

Ifb=Pmax/(VI-vO);

Rfb=[(1/Rsc)-((Ifb-Isc)/vO)]^(-1);

R3R4rat=(Rfb/Rsc)-1;

IB3=0.1*10^(-3);

R4=(VBE/(10*IB3))/(1+R3R4rat);

R3=R4*R3R4rat;

printf("\n\n(b) Ifb=%.f A",Ifb);

printf("\n    Rfb=%.2f ohms",Rfb);

printf("\n    R3=%.f ohms",R3-3);

printf("\n    R4=%.f ohms",R4+3);