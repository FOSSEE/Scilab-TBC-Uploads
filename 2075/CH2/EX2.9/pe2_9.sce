//example 2.9
clc; funcprot(0);
// Initialization of Variable
V=15;//voltage
R=4;//resistance
Vl=.1;
D=8;//duty cycle
//calculation
Il=V/R;
disp(Il,"load current in A:")
Rw=Vl/Il//wiring resistance
disp(Rw*1000,"wiring resistance in mohm:")
Ri=Rw/(2*D);
disp(Ri*1e6,"resistance per inch in microohm/inch:")
clear()
