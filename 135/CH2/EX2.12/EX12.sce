//Example 2.12: (b) Vo
//              (c) I
clc, clear

disp("Part (b)");
// In the Fig. 2.22 (a)
vs=10e-3; // in volts
Rs=1e3; // in ohms
eta=2;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
I=1e-3; // in amperes
Vo=vs*eta*VT/(eta*VT+I*Rs); // in volts
Vo=Vo*1e3; // in milivolts
disp(Vo,"Vo for I= 1 mA (mV) =");
I=0.1e-3; // in amperes
Vo=vs*eta*VT/(eta*VT+I*Rs); // in volts
Vo=Vo*1e3; // in milivolts
disp(Vo,"Vo for I= 0.1 mA (mV) =");
I=1e-6; // in amperes
Vo=vs*eta*VT/(eta*VT+I*Rs); // in volts
Vo=Vo*1e3; // in milivolts
disp(Vo,"Vo for I= 1 μA (mV) =");

disp("Part (c)");
Vo=vs/2; // in volts
I=eta*VT*(vs-Vo)/(Vo*Rs); // in amperes
I=I*1e6; // in micro-amperes
disp(I,"I (μA) =");