//calculate the power delivered to load and i/p pf

clc;
disp("for firing angle=30deg");
a=30;
V=400;
V_ml=sqrt(2)*V;
V_o=3*V_ml*cosd(a)/%pi;
E=350;
R=10;
I_o=(V_o-E)/R;
I_or=I_o;
P=V_o*I_o;    printf("power delivered to load=%.2f W",P);
I_sr=I_o*sqrt(2/3);
VA=3*V/sqrt(3)*I_sr;
pf=P/VA;    printf("\npf=%.4f",pf);

disp("for firing advance angle=60deg");
a=180-60;
V=400;
V_ml=sqrt(2)*V;
V_o=3*V_ml*cosd(a)/%pi;
E=-350;
R=10;
I_o=(V_o-E)/R;
I_or=I_o;
P=-V_o*I_o;    printf("power delivered to load=%.2f W",P);
I_sr=I_o*sqrt(2/3);
VA=3*V/sqrt(3)*I_sr;
pf=P/VA;    printf("\npf=%.4f",pf);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
