// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_12
clc; clear;
// Solve for Ib, Ic, Vce. Also, Construct a dc load line showing the valuse of Ic(sat), Vce(off), Icq, Vceq.

// Given data
Vcc = 12;               // Supply voltage=12 Volts
Vbe = 0.7;              // Base-Emitter Voltage=0.7 Volts
Rb = 390*10^3;          // Base Resistor=390K Ohms
Rc = 1.5*10^3;          // Collector Resistor=1.5K Ohms
B = 150;                // Beta(dc)=150

Ib = (Vcc-Vbe)/Rb;
disp (Ib,'The Base Current in Amps.')
disp ('Appox 28.97 mAmps')

Icq = B*Ib;
disp (Icq,'The Collector Current in Amps');
disp ('Appox 4.35 mAmps')

Vceq = Vcc-(Icq*Rc);
disp (Vceq, 'The Voltage Collector-Emitter in Volts')

// For DC load line

Icsat = (Vcc/Rc);
Vceoff = Vcc;

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
xtitle("DC Load-line for Base-Biased Transistor Circuit")
