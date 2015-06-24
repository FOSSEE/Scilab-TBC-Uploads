//ex3.3
V_Z=8.2;    //8.2 volt zener diode
TC=0.0005;    //Temperature coefficient (per degree celsius)
T1=60;    //Temperatures in celsius
T2=25;
DEL_T=T1-T2;
del_V_Z=V_Z*TC*DEL_T;
voltage=V_Z+del_V_Z;
disp(voltage,'zener voltage at 60 degree celsius')