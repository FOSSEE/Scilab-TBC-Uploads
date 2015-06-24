clear;
clc;
E=200;
I_o=20;
R=.5;
V_o=E+I_o*R;
V_s=230;
V_ml=sqrt(2)*V_s;
a=acosd(V_o*%pi/(3*V_ml));    printf("firing angle delay=%.3f deg",a);
th=120;
I_s=sqrt((1/%pi)*I_o^2*th*%pi/180);
P=E*I_o+I_o^2*R;
pf=P/(sqrt(3)*V_s*I_s);    printf("\npf=%.3f",pf);

V_o=E-I_o*R;
a=acosd(-V_o*%pi/(3*V_ml));    printf("\nfiring angle delay=%.2f deg",a);
