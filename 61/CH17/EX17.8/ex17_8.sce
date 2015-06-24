//Ex17.8
V_OUT=24;    //Output voltage in Volts
R_L=10;    //Load resistance in Ohms
V_IN=30;    //Input voltage in Volts
I_max=700*10^-3;    //maximum interal current in Amperes
I_L=V_OUT/R_L;    //load current in amperes
I_ext=I_L-I_max;    //current through the external pass transistor in Amperes
P_ext_Qext=I_ext*(V_IN-V_OUT);    //power dissipated
disp(P_ext_Qext,'power dissiated(in WATTS) by the external pass transistor')
disp('For safety purpose, we choose a power transistor with rating more than this, say 15W')