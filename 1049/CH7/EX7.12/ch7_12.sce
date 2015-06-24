clear;
clc;
R=1;
L=.001;
V_s=220;
E=72;
f=500;
T_on=800*10^-6;
T_a=L/R;
T=1/f;
m=E/V_s;
a=T_on/T;
a1=(T_a/T)*log(1+m*(exp(-T/T_a)-1));
if(a1>a)
    disp("load current is continuous");
else
    disp("load current is discontinuous");
end
t_x=T_on+L*log(1+((V_s-E)/272)*(1-exp(-T_on/T_a)));
//Value of t_x wrongly calculated in the book so ans of V_o and I_o varies
V_o=a*V_s+(1-t_x/T)*E;    printf("avg o/p voltage=%.2f V",V_o);
I_o=(V_o-E)/R;    printf("\navg o/p current=%.2f A",I_o);
printf("\nmin value of load current=%.0f A",0);
I_mx=(V_s-E)/R*(1-exp(-T_on/T_a));    printf("\nmax value of load current=%.1f A",I_mx);