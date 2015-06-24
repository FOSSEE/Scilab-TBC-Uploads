//ex3.2
I_ZT=37*10^-3;    //IN AMPERES
V_ZT=6.8;    //IN VOLTS
Z_ZT=3.5;    //IN OHMS
I_Z=50*10^-3;    //IN AMPERES
DEL_I_Z=I_Z-I_ZT;
DEL_V_Z=DEL_I_Z*Z_ZT;
V_Z=V_ZT+DEL_V_Z;
disp(V_Z,'voltage across zener terminals (in volts) when current is 50 mA')
I_Z=25*10^-3;    //IN AMPERES
DEL_I_Z=I_Z-I_ZT;
DEL_V_Z=DEL_I_Z*Z_ZT;
V_Z=V_ZT+DEL_V_Z;
disp(V_Z,'voltage across zener terminals (in volts) when current is 25 mA')

