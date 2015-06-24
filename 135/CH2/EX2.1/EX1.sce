// Example 2.1: (a) I,Vo
//              (b) I,Vo
clc, clear

disp("Part (a)");
// Applying Thevnin's theorem at XX', in Fig. 2.5(a)
Vth=15*20e3/(10e3+20e3); // Thevnin equivalent voltage in volts
Zth=10e3*20e3/(10e3+20e3); // Thevnin equivalent resistance in ohms
// From the figure 2.5(c)
I=Vth/(Zth+20e3); // Labelled current in amperes
Vo=I*20e3; // Labelled voltage in volts
I=I*1e3; // Labelled current in miliamperes
disp(I,"Labelled current I (mA) = ");
disp(Vo,"Labelled voltage Vo (V) = ");

disp("Part (b)");
// Applying Thevnin's theorem at XX' and YY', in Fig. 2.5(b)
Vth1=15*10e3/(10e3+10e3); // Thevnin equivalent voltage at XX' in volts
Zth1=10e3*10e3/(10e3+10e3); // Thevnin equivalent resistance at YY' in ohms
Vth2=5; // Thevnin equivalent voltage at YY' in volts
Zth2=5e3; // Thevnin equivalent resistance at YY' in ohms
// From the figure 2.5(d)
I=0; // Labelled current in amperes
Vo=5-7.5; // Labelled voltage in volts
disp(I,"Labelled current I = ");
disp(Vo,"Labelled voltage Vo (V) = ");