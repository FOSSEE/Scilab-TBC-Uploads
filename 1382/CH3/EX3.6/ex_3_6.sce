// Example 3.1: (i) maximum output power (ii) maximum collector efficiency (iii) power rating of the transistor
clc, clear;
Vcc=10; // collector supply voltage in volts
Icq=200; // zero-signal collector current in milli-ampere
Rl=2; // load resistance in ohm
alfa=5; // turn ratio
Pout=(Vcc*(Icq*10^-3))/2;
Pin=(Vcc*(Icq*10^-3));
eta=(Pout/Pin)*100;
P=(Vcc*(Icq*10^-3)); 
Rl1=(alfa^2)*Rl;
disp(Pout,"output power for dc (w) = ")
disp(Pin,"input power for ac (w) = ")
disp(eta,"collector efficiency (%) = ")
disp(P,"power rating of the transistor (w) = ")
disp(Rl1,"load by the tranformer primary (ohm) = ")
