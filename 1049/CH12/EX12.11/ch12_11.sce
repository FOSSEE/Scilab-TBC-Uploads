clear;
clc;
V_t=230;
V_l=V_t*%pi/(3*sqrt(2));
V_ph=V_l/sqrt(3);
V_in=400;    //per phase voltage input
printf("transformer phase turns ratio=%.3f",V_in/V_ph);

N=1500;
I_a=20;
r_a=.6;
disp("for motor running at 1000rpm at rated torque");
E_a1=V_t-I_a*r_a;
n=1000;
E_a=E_a1/1500*1000;
V_t=E_a+I_a*r_a;
a=acosd(V_t*%pi/(3*sqrt(2)*V_l));    printf("firing angle delay=%.2f deg",a);

disp("for motor running at -900rpm at half of rated torque");
I_a=.5*I_a;
n=-900;
V_t=n*E_a1/N+I_a*r_a;
a=acosd(V_t*%pi/(3*sqrt(2)*V_l));    printf("firing angle delay=%.3f deg",a);
