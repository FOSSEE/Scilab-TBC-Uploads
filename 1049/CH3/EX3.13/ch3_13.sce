clear;
clc;
V_L=6.8;//V
V_smax=20*1.2;//V
V_smin=20*.8;//V
I_Lmax=30*1.5;//mA
I_Lmin=30*.5;//mA
I_z=1;//mA

R_smax=(V_smax-V_L)/((I_Lmin+I_z)*10^-3);    printf("max source resistance=%.0f ohm",R_smax);
R_smin=(V_smin-V_L)/((I_Lmax+I_z)*10^-3);    printf("\nmin source resistance=%.0f ohm",R_smin);//in book solution, error is committed in putting the values in formulea(printing error) but solution is correct
R_Lmax=V_L*1000/I_Lmin;    printf("\nmax load resistance=%.1f ohm",R_Lmax);
R_Lmin=V_L*1000/I_Lmax;    printf("\nmin load resistance=%.1f ohm",R_Lmin);

V_d=.6;//V
V_r=V_L-V_d;    printf("\nvoltage rating of zener diode=%.1f V",V_r);