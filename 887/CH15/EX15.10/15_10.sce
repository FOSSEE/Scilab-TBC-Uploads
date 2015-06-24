clc
//ex15.10
V_1_rms=110;
R_L=10;
tr=5;      //turns ratio(N1/N2)
V_2_rms=V_1_rms/tr;      //primary and secondary voltage relation
//a)open switch
disp('OPEN switch')
disp(V_1_rms,'Primary voltage in volts')
disp(V_2_rms,'Secondary voltage in volts')
//As switch is open, current in second winding is 0 which implies the current in primary coil to be 0 (ideal transformer condition)
disp(0,'Current in primary winding in amperes')
disp(0,'Current in secondary winding in amperes')
//b)closed switch
disp('CLOSED switch')
I_2_rms=V_2_rms/R_L;      //ohm's law
I_1_rms=I_2_rms/tr;      //ideal transformer condition
disp(V_1_rms,'Primary voltage in volts')
disp(V_2_rms,'Secondary voltage in volts')
disp(I_1_rms,'Current in primary winding in amperes')
disp(I_2_rms,'Current in secondary winding in amperes')
