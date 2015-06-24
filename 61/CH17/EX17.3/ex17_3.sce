//Ex17.3
//All voltages are in Volts and Resistances in Ohms
V_REF=5.1    //Zener voltage
R2=10*10^3;
R3=10*10^3;
V_out=(1+(R2/R3))*V_REF;
disp(V_out,'output voltage in volts')