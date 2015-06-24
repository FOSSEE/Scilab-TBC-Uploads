//chapter 36
//example4
clc
//given
L=3//inductance in henry
R=10 //resistance in ohm
V=3 //emf in volts
t=0.30//in sec
T=0.30 //inductive time constant in sec
//(a)
i=(V/R)*(1-exp(-t/T))
P1=V*i
disp(P1,"The rate at which energy is delivred by the battery in watt is")
//(b)
P2=i^2*R
disp(P2,"The rate at which energy appears as Joule heat in the resistor in watt is")
//(c)
disp("Let D=di/dt")
D=(V/L)*exp(-t/T)// in amp/sec
P3=L*i*D
disp(P3,"The desired rate at which energy is being stored in the magnetic field in watt is")
