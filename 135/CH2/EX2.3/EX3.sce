// Example 2.3: (a) Voltage
//              (b) Ratio of current in forward bias to that in reverse bias
//              (c) Forward current
clc, clear

disp("Part (a)");
eta=1; // for Ge
T=300; // Room temperature in kelvins
VT=T/11600; // Voltage equivalent to temperatue at room temperature in volts
IS=1; // Let reverse saturation current be 1 A
I=-0.9*IS; // Reverse current
V=eta*VT*log(1+(I/IS)); // Voltagei in volts
V=V*1e3; // Voltage in milivolts
disp(V,"Voltage (mV) = ");

disp("Part (b)");
V=0.05; // Voltage in volts
If_Ir=(%e^(V/(eta*VT))-1)/(%e^(-V/(eta*VT))-1); // Ratio of current in forward bias to that in reverse bias
disp(If_Ir,"Ratio of current in forward bias to that in reverse bias = ");

disp("Part (c)");
IS=10e-6; // Reverse saturation current in amperes
V=0.1; // Voltage in volts
ID=IS*(%e^(V/(eta*VT))-1); // Forward current for 0.1 V in amperes
ID=ID*1e6; // Forward current for 0.1 V in micro-amperes
disp(ID,"Forward current for 0.1 V (μA) = ");
V=0.2; // Voltage in volts
ID=IS*(%e^(V/(eta*VT))-1); // Forward current for 0.1 V in amperes
ID=ID*1e3; // Forward current for 0.1 V in miliamperes
disp(ID,"Forward current for 0.1 V (mA) = ");
V=0.3; // Voltage in volts
ID=IS*(%e^(V/(eta*VT))-1); // Forward current for 0.1 V in amperes
disp(ID,"Forward current for 0.1 V (A) = ");