clear;
clc;
//Example 2.1
v_I=120;//(V)rms primary input  
v_o=9;//(V)peak output voltage
V_Y=0.7;//(V)diode cut in voltage
//for center-tapped transformer circuit in fig.2.6(a)
v_S=v_o+V_Y//(V)peak value of secondary voltage
printf('\npeak value of secondary voltage=%.2f V\n',v_S)
v_S_rms=v_S/sqrt(2)//for a sinusoidal signal rms value of v_S
printf('\nrms value of v_S=%.2f V\n',v_S_rms)
//let turns ratio of the primary to secondary winding be x=N1/N2
x=v_I/v_S_rms;
printf('\nturns ratio=%f \n',x)
//for the bridge circuit in fig.2.7(a)
v_Sb=v_o+2*V_Y;//(V)peak value of secondary voltage
printf('\npeak value of secondary voltage=%.2f V\n',v_Sb)
v_S_rms=v_Sb/sqrt(2);//for a sinusoidal signal rms value of v_S
printf('\nrms value of v_S=%f V\n',v_S_rms)
//let turns ratio of the primary to secondary winding be x=N1/N2
x=v_I/v_S_rms;
printf('\nturns ratio=%f\n',x)
//for center tapped rectifier
PIV=2*v_S-V_Y;
printf('\npeak inverse voltage of a diode=%f V\n',PIV)
//for the bridge rectifier peak inverse voltage of a diode
PIV=v_Sb-V_Y;
printf('\npeak inverse voltage of a diode=%.2f V\n',PIV)
//advantage of bridge rectifier over center tapped rectifier is it requies only half of the turns
