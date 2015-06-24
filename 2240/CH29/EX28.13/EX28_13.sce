// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_13
clc; clear;
// Solve for Vb, Ve, Ic, Vc, and Vce. Also, calculate Ic(sat) and Vce(off). Finally, construct a dc load line showing the values of Ic(sat), Vce(off), Icq, and Vceq.

// Given data

R1 = 33*10^3;       // Resistor 1=33 kOhms
R2 = 5.6*10^3;      // Resistor 2=5.6 kOhms
Rc = 1.5*10^3;      // Collector resistance=1.5 kOhms
Re = 390;           // Emitter resistance=390 Ohms
Bdc = 200;          // Beta(dc)= 200
Vcc = 18;           // Supply voltage = 18 Volts
Vbe = 0.7;          // Base-Emmiter Voltage=0.7 Volts

Vb = Vcc*(R2/(R1+R2));
disp (Vb,'The Base Voltage in Volts')

Ve = Vb-Vbe;
disp (Ve,'The Emmiter Voltage in Volts')

Ie = Ve/Re;         // Emitter current

Ic = Ie;

Vc = Vcc-(Ic*Rc);
disp (Vc,'The Collector Voltage in Volts')
disp ('Appox 10.65 Volts')

Vce = Vcc-(Ic*(Rc+Re));
disp (Vce,'The Collector-Emitter Voltage in Volts')
disp ('Appox 8.74 Volts')

Icsat = Vcc/(Rc+Re);
disp (Icsat,'The Current Ic(sat) in Amps')
disp ('i.e 9.52 mAmps')

Vceoff = Vcc;
disp (Vceoff,'The Voltage Vce(off) in Volts')

Icq = Ic
Vceq = Vce

Vce1=[Vcc Vceq 0]
Ic1=[0 Icq Icsat]

//To plot DC load line

printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce1, Ic1)
plot(Vceq,Icq,".r")
plot(0,Icq,".r")
plot(Vceq,0,".r")
plot(0,Icsat,".b")
plot(Vceoff,0,".b")
xlabel("Vce in Volt")
ylabel("Ic in mAmps")
xtitle("DC Load-line for Voltage Divider-Biased Transistor Circuit")
