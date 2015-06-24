//to find the maximum stress induced
b=60// b=60mm
t=10//t=10mm
d=12//d=12mm
A=(b-d)*t
disp(A,"Area=")
W=12000//W=12kN
Ns=W/A
disp(Ns,"Nominal Stress=")
x=d/b//ratio of diameter of hole to plate width
// for d/b=0.2, Kt=2.5
Kt=2.5
Ms=Kt*Ns
disp(Ms,"Maximum stress=")
