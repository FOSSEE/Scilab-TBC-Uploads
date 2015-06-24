//chapter 36
//example3
clc
//given
L=5 //inductance in henry
V=100 //emf in volts
R=20 //resistance in ohms
i=V/R
disp(i,"Maximum current in amp is")
U=(L*i^2)/2
disp(U,"Energy stored in the magnetic field in joules is")
