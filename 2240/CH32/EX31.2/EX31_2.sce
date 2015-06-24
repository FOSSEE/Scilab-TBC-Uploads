// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_2
clc; clear;
// Claculate the following AC quantities Av, Vout, Pl, Pcc and percent efficiency. Also calculate the endpoints of ac loadline

// Given data

Icq = 7.91*10^-3;       // Collector Currect(Q-point)=7.91 mAmps
Rl = 1.5*10^3;          // Load Resistor=1.5 kOhms
Rc = 1*10^3;            // Collector Resistor=1 kOhms
Vin = 25*10^-3;         // Input Voltage=25 mVolts(p-p)
R1 = 18*10^3;           // Resistor 1=18 kOhms
R2 = 2.7*10^3;          // Resistor 2=2.7 kOhms
Vcc = 20;               // Supply Voltage(Collector)=20 Volts
Vceq = 10.19;           // Voltage Colector-Emitter(Q-point)=10.19 Volts

rc = (25*10^-3)/Icq;
rl = (Rc*Rl)/(Rc+Rl)

Av = rl/rc;
disp (Av,'The Voltage Gain Av is')
disp ('Appox 190')

Vout = Av*Vin;
disp (Vout,'The Output Voltage in Volts')
disp ('Appox 4.75 Volts')

Pl = (Vout*Vout)/(8*Rl);
disp (Pl,'The Load Power in Watts')
disp ('i.e Appox 1.88 mWatts')

Ivd = Vcc/(R1+R2);
// Ic = Icq
Icc = Ivd+Icq;

Pcc = Vcc*Icc;
disp (Pcc,'The Dc Input Power in Watts')
disp ('i.e Appox 177.4 mWatts')

efficiency = ((Pl/Pcc)*100);
disp (efficiency,'The Efficiency in % is')
disp ('Appox 1%')

// Endpoints of AC load line

icsat = Icq+(Vceq/rl);
disp (icsat,'The Y-axis Value of AC Load-line is ic(sat) in Amps')
disp ('i.e 24.89 mAmps')

vceoff = Vceq+Icq*rl;
disp (vceoff,'The X-axis value of AC Load-line is vce(off) in Volts')

// For AC load line

Vce1=[vceoff Vceq 0]
Ic1=[0 Icq icsat]

//To plot AC load line

printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce1, Ic1)
plot(Vceq,Icq,".r")
plot(0,Icq,".r")
plot(Vceq,0,".r")
plot(0,icsat,".b")
plot(vceoff,0,".b")
xlabel("Vce in volt")
ylabel("Ic in Ampere")
xtitle("AC Load-line for Common-Emitter Class A Amplifier Circuit")
