// Example 3.3: calculate the input impedence, output impedence, voltage gain and current gain 
clc, clear
Re=4; // resistance in kilo-ohm
Rc=3; // resistance in kilo-ohm
Vcc=10; // collector voltage in volts
Vee=8; // emitter voltage in volts
Vbe=0.6; // base voltage in volts
Ie=(Vee-Vbe)/(Re*10^3)
re=26*10^-3/Ie;
zi=((Re*10^3)*re)/((Re*10^3)+re);
zo=Rc;
Av=Rc/(re*10^-3);
Ai=Ie/Ie;
disp(Ie,"emitter current (A) = ")
disp(zi,"input impedence (ohm) = ")
disp(zo,"ouput impedence (kilo-ohm) = ")
disp(Ai,"current gain (unitless) = ")
disp(Av,"voltage gain (unitless) = ")
