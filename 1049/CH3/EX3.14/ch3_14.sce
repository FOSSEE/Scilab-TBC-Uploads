clear;
clc;
I2=200*10^-6;//A
V_z=20;//V
R_G=500;//ohm
R2=(V_z/I2)-R_G;    printf("R2=%.1f kilo-ohm",R2/1000);

V_v=25;//V
I1=I2;
R1=(V_v-V_z)/I1;    printf("\nR1=%.0f kilo-ohm",R1/1000);
