clear;
clc;
V_t=220;
n_m=1000;
w_m=2*%pi*n_m/60;
I_a=60;
r_a=.1;
K_m=(V_t-I_a*r_a)/(w_m);
V_s=230;
V_m=sqrt(2)*V_s;
disp("for 600rpm speed");
n_m=600;
w_m=2*%pi*n_m/60;
a=acosd((K_m*w_m+I_a*r_a)*%pi/(2*V_m));    printf("firing angle=%.3f deg",a);

disp("for -500rpm speed");
n_m=-500;
w_m=2*%pi*n_m/60;
a=acosd((K_m*w_m+I_a*r_a)*%pi/(2*V_m));    printf("firing angle=%.3f deg",a);

I_a=I_a/2;
a=150;
V_t=2*V_m*cosd(a)/%pi;
w_m=(V_t-I_a*r_a)/K_m;
N=w_m*60/(2*%pi);    printf("\nmotor speed=%.3f rpm",N);
