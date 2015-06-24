//example 1.1a
clc;funcprot(0);
//Initialization of Variable
R1=1000;
R2=1000;
Rl=500//load resistance
V=1//input voltage
Vo=(R2/(R1+R2))*V;
disp(Vo,"open output voltage in Vrms")
Rll=1/((1/R2)+(1/Rl))//lower loaded resistance
disp(Rll,"resistance lower loaded in ohm:")
Vol=(Rll/(R2+Rll))*V;
disp(Vol,"loaded output voltag in Vrms")
clear()
