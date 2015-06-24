// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_8
clc; clear;
// Calculate the following quantities: Vb, Ve, Ic, Vc, Vce, r'e, Zin(base), Zin, Av, vb, and vout. Also, plot the dc load line.

// Given data

R1 = 22*10^3;   // Resistance1=22 kOhms
R2 = 18*10^3;   // Resistance2=18 kOhms
Rg = 600;       // Generator resistance=600 Ohms
Re = 1.5*10^3;  // Emitter resistance=1.5 kOhms
Rl = 1*10^3;    // Load resistance=1 kOhms
Vcc = 20;       // Supply Voltage=20 Volts
Vbe = 0.7;      // Voltage Base-Emitter=0.7 Volts
B = 200;        // Beta=200
vin = 5;        // Input Voltage=5 Volts(p-p)

// Calculate the DC quantities first:

Vb = Vcc*(R2/(R1+R2));
disp (Vb,'The Base Voltage in Volts')

Ve = Vb-Vbe;
disp (Ve,'The Emitter Voltage in Volts')

Ie = Ve/Re;
Ic = Ie;        // Ic =~ Ie
disp (Ic,'The Collector current in Amps')
disp ('i.e 5.53 mAmps')

Vc = Vcc;       // Since the collector is tied directly to Vcc
disp (Vc,'The Collector Voltage in Volts')

Vce = Vcc-Ve;
disp (Vce,'The Collector-Emmiter Voltage in Volts')

Icsat = Vcc/Re;

Vceoff = Vcc;

// Now, calculate AC quantities:

a = 25*10^-3;

re = a/Ie;
disp (re,'The AC emmiter resistance in Ohms')
disp ('Appox 4.52 Ohms')

b = Re*Rl;
c = Re+Rl;
rl = b/c;

Av = rl/(rl+re);
disp (Av,'The Voltage gain is')

Zinbase = B*(re+rl);
disp (Zinbase,'The Input Base Impedence in Ohms')
disp ('i.e 120.9 kOhms')

d = 1/Zinbase;
e = 1/R1;
f = 1/R2;

Zin = (d+e+f)^-1
disp(Zin,'The Input Impedence in Ohms')
disp ('i.e 9.15 kOhms')

vb = vin*(Zin/(Zin+Rg));
disp (vb,'The AC base voltage in Volts(p-p)')

vout = Av*vb;
disp(vout,'The AC output voltage in Volts(p-p)')

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
xtitle("DC Load-line for Emitter Follower Circuit")
