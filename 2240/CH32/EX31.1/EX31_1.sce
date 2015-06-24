// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_1
clear; clc;
// Calculate the following dc quantities Icq, Vceq, Pd, Ic(sat) and Vce(off). Also draw the dc load line

// Given Data

R1 = 18*10^3;       // Resistor 1=18k Ohms
R2 = 2.7*10^3;      // Resistor 2=2.7k Ohms
Vcc = 20;           // Supply Voltage(Collector)=20 Volts
Vbe = 0.7;          // Voltage Base-Emitter=0.7 Volts
Re = 240;           // Emitter Resistor=240 Ohms
Rc = 1*10^3;        // Collector Resistor=1k Ohms

Vb = Vcc*(R2/(R1+R2));

Ve = Vb-Vbe;

//Ie = Ic;

Icq = Ve/Re;
disp (Icq,'The value of Icq in Amps')
disp ('i.e Appox 7.91 mAmps')

Vceq = Vcc-Icq*(Rc+Re);
disp (Vceq,'The value of Vceq in Volts')
disp ('Appox 10.19 Volts')

Pd = Vceq*Icq;
disp (Pd,'The Power Dissipation in Watts')
disp ('i.e 80.6 mWatts')

Icsat = Vcc/(Rc+Re);
disp (Icsat,'The value of Ic(sat) in Amps')
disp ('i.e 16.1 mAmps')

Vceoff = Vcc;
disp (Vceoff,'The value of Vce(off) in Volts')

// For DC load line

Vce1=[Vceoff Vceq 0]
Ic1=[0 Icq Icsat]

//To plot DC load line

printf("Q(%f,%f)\n",Vceq,Icq)
plot2d(Vce1, Ic1)
plot(Vceq,Icq,".r")
plot(0,Icq,".r")
plot(Vceq,0,".r")
plot(0,Icsat,".b")
plot(Vceoff,0,".b")
xlabel("Vce in volt")
ylabel("Ic in Ampere")
xtitle("DC Load-line for Common-Emitter Class A Amplifier Circuit")

