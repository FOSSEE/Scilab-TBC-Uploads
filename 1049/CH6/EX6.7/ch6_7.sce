clear;
clc;
V_s=230;
V_m=sqrt(2)*V_s;
R=.4;
I_o=10;
I_or=I_o;
E=120;
a=acosd((E+I_o*R)*%pi/(2*V_m));    printf("firing angle delay=%.2f deg",a);
pf=(E*I_o+I_or^2*R)/(V_s*I_or);    printf("\npf=%.4f",pf);

E=-120;
a=acosd((E+I_o*R)*%pi/(2*V_m));    printf("\nfiring angle delay=%.2f deg",a);
pf=(-E*I_o-I_or^2*R)/(V_s*I_or);   printf("\npf=%.4f",pf);
