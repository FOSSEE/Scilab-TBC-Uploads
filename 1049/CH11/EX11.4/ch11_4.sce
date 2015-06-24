clear;
clc;
V=200;
I=10;
R_L=V/I;    printf("value of load resistance=%.0f ohm",R_L);
I_h=.005;    //holding current
R2=V/I_h;    printf("\nvalue of R2=%.0f kilo-ohm",R2/1000);
t_c=20*10^-6;
fos=2;//factor of safety
C=t_c*fos/(R_L*log(2));    printf("\nvalue of C=%.3f uF",C*10^6);