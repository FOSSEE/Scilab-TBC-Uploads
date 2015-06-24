clear;
clc;
V_s=220;
V_p=sqrt(2)*V_s/3;    printf("rms value of phasor voltages=%.2f V",V_p);
V_L=sqrt(3)*V_p;    printf("\nrms value of line voltages=%.2f V",V_L);

V_p1=sqrt(2)*V_s/%pi;    printf("\nfundamental component of phase voltage=%.3f V",V_p1);
V_L1=sqrt(3)*V_p1;    printf("\nfundamental component of line voltages=%.3f V",V_L1);

V_oh=sqrt(V_L^2-V_L1^2);
THD=V_oh/V_L1;    printf("\nTHD=%.7f",THD);

V_a1=2*V_s/%pi;
V_a5=2*V_s/(5*%pi);
V_a7=2*V_s/(7*%pi);
V_a11=2*V_s/(11*%pi);
R=4;
L=0.02;
f=50;
w=2*%pi*f;
Z1=sqrt(R^2+(w*L)^2);
Z5=sqrt(R^2+(5*w*L)^2);
Z7=sqrt(R^2+(7*w*L)^2);
Z11=sqrt(R^2+(11*w*L)^2);
I_a1=V_a1/Z1;
I_a5=V_a5/Z5;
I_a7=V_a7/Z7;
I_a11=V_a11/Z11;
I_or=sqrt((I_a1^2+I_a5^2+I_a7^2+I_a11^2)/2);
P=3*I_or^2*R;    printf("\nload power=%.1f W",P);
I_s=P/V_s;    printf("\navg value of source current=%.3f A",I_s);
I_TA=I_s/3;    printf("\navg value of thyristor current=%.3f A",I_TA);
