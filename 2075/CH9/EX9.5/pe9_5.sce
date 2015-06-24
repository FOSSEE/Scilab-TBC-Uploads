//example 9.5
clc;funcprot(0);
//Initialization of Variable
I=22.6;//current
V=120;//voltage
Id=28;//A
Vd=280;//V
//calculation
P=3*I*V;
disp(P/1000,"total power in kW:")
Pl=Id*Vd;
disp(Pl/1000,"load power in kW:")
Pf=Pl/P;
disp(Pf,"power factor:")
clear()
