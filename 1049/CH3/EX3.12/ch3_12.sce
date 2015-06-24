clear;
clc;
V_s=230;//V
R=1000;//ohm
R_D=20;//ohm
V_m=sqrt(2)*V_s;
I_om=V_m/(R+R_D);    printf("peak load current=%.4f A",I_om);
I_o=I_om/%pi;    printf("\ndc load current=%.5f A",I_o);
V_D=I_o*R_D-V_m/%pi;    printf("\ndc diode voltage=%.1f V",V_D);
V_on=V_m/%pi;    printf("\nat no load, load voltage=%.3f V",V_on);
V_o1=I_o*R;    printf("\nat given load, load voltage=%.3f V",V_o1);
vr=(V_on-V_o1)*100/V_on;    printf("\nvoltage regulation(in percent)=%.3f",vr);