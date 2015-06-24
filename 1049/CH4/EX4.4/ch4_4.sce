clear;
clc;
R_s=120;    //slope of load line is -120V/A. This gives gate source resistance
printf("gate source resistance=%.0f ohm",R_s);

P=.4;    //P=V_g*I_g
E_s=15;
//E_s=I_g*R_s+V_g,    after solving this
//120*I_g^2-15*I_g+0.4=0    so
a=120;    b=-15;    c=0.4;
D=sqrt((b^2)-4*a*c);
I_g=(-b+D)/(2*a);    V_g=P/I_g;
printf("\ntrigger current=%.2f mA",I_g*10^3);    printf("\nthen trigger voltage=%.3f V",V_g);

I_g=(-b-D)/(2*a);    V_g=P/I_g;
printf("\ntrigger current=%.2f mA",I_g*10^3);    printf("\nthen trigger voltage=%.2f V",V_g);
