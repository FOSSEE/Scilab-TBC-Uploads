// Example 2.2: Change in diode voltage
clc, clear
ID1=1; // Let the initial diode current be 1 A
ID2=15*ID1; // Final diode current
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
eta=1; // for Ge
deltaVD=eta*VT*log(ID2/ID1); // Change in diode voltage in volts
deltaVD=deltaVD*1e3; // Change in diode voltage in milivolts
disp(deltaVD,"Change in diode voltage (for Ge) (mV) = ");
eta=2; // for Si
deltaVD=eta*VT*log(ID2/ID1); // Change in diode voltage in volts
deltaVD=deltaVD*1e3; // Change in diode voltage in milivolts
disp(deltaVD,"Change in diode voltage (for Si) (mV) = ");