//ex3.5
V_Z=5.1;
I_ZT=49*10^-3;
I_ZK=1*10^-3;
Z_Z=7;
R=100;
P_D_max=1;
//At I_ZK, output voltage
V_out=V_Z-(I_ZT-I_ZK)*Z_Z;
V_IN_min=I_ZK*R+V_out;
I_ZM=P_D_max/V_Z;
//at I_ZM, output voltage
V_out=V_Z+(I_ZM-I_ZT)*Z_Z;
V_IN_max=I_ZM*R+V_out;
disp(V_IN_max,'maximum input voltage in volts that can be regulated by the zener diode')
disp(V_IN_min,'minimum input voltage in volts that can be regulated by the zener diode')