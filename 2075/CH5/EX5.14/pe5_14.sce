//example 5.14
clc; funcprot(0);
// Initialization of Variable
pi=3.1428;
V=15.0;//voltage
f=300.0;//frequency
L=4.7;//inductance
Vdc=28;//V
//calculation
Xl=2*pi*f*L;
disp(Xl/1000,"reactance in ohm")
Zload=sqroot(8^2+8.9^2);//magnitude of Zload
Vload=15.0;//msgnitude of Vload
Vr=Vload*8/Zload;
disp(Vr,"voltage across resistor in V");
disp("-48 is the angle of the voltage in degrees");
Pr=12.5;
disp(Pr,"power dissipated by load in watts")
I=Vr/8*sqroot(2);
disp(I,"current across the resistamce in A");
Psupply=Vdc*I/pi;
disp(Psupply,"power supply in W");
Pq=Psupply-Pr/2;
disp(Pq,"power dissipated by transistor in watts")
clear()
