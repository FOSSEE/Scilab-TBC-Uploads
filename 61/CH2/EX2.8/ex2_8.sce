//Ex2.8
V_REF=1.25;    //in volts
V_R1=V_REF;
R1=220;    //in ohms
I_ADJ=50*10^-6    //in amperes
// MAX VALUE OF R2=5000 Ohms
//V_out=V_REF*(1+(R2/R1))+I_ADJ*R2
R2_min=0;
V_out_min=V_REF*(1+(R2_min/R1))+I_ADJ*R2_min;
R2_max=5000;
V_out_max=V_REF*(1+(R2_max/R1))+I_ADJ*R2_max;
disp(V_out_min,'minimum output voltage in volts');
disp(V_out_max,'maximum output voltage in volts');