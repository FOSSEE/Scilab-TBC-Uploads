clear;
clc;
V_s=200;
R1=10;
R2=100;
I1=V_s*(1/R1+2/R2);    printf("peak value of current through SCR1=%.0f A",I1);    
I2=V_s*(2/R1+1/R2);    printf("\npeak value of current through SCR2=%.0f A",I2);
t_c1=40*10^-6;
fos=2;    //factor of safety
C1=t_c1*fos/(R1*log(2));
C2=t_c1*fos/(R2*log(2));
if(C1>C2)
    printf("\nvalue of capacitor=%.4f uF",C1*10^6);
else
    printf("\nvalue of capacitor=%.4f uF",C2*10^6);
end
    