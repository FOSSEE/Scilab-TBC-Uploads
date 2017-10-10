//Example 4.10
clc;

Im=20*10^-3;       //Full Scale Current
Vm=100*10^-3;      //Voltage across MCI
Rm=Vm/Im;          //Meter Resistence

//Shunt resistence for fullscale current of 50 A
I=50;
Rsh=Im*Rm/(I-Im);
disp(Rsh,'Shunt resistence for fullscale current of 50 A')

P=Vm*I;         //Power Dissipation
disp(P,'Power Dissipation when as Ammeter')

//Voltage Multiplier for full scale reading with 500 V
V=500;
Rsh=V/Im-Rm;
disp(Rsh,'Voltage Multiplier for full scale reading with 500 V')

P=V*Im;        //Power Dissipation
disp(P,'Power Dissipation when used as Voltmeter')