clear;
clc;
V_s=230;
V_m=sqrt(2)*V_s;
a=45;
V_or=(V_s)*sqrt(1/%pi*((%pi-a*%pi/180)+sind(2*a)/2));    printf("rms value of o/p voltage=%.3f V",V_or);
R=20;
I_or=V_or/R;
P_o=I_or^2*R;    printf("\nload power=%.2f W",P_o);
I_s=I_or;
VA=V_s*I_s;
pf=P_o/VA;    printf("\ni/p pf=%.4f",pf);

I_TA=sqrt(2)*V_s/(2*%pi*R)*(cosd(a)+1);    printf("\navg thyristor current=%.3f A",I_TA);
I_Tr=sqrt(2)*V_s/(2*R)*sqrt(1/%pi*((%pi-a*%pi/180)+sind(2*a)/2));    printf("\nrms value of thyristor current=%.4f A",I_Tr);