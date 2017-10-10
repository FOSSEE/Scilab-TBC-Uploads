
D=50//D=50mm
d=25//d=12mm
r=5
A=(%pi*d^2)/4
disp(A,"Area=")
W=12000//W=12kN
Ns=W/A
disp(Ns,"Nominal Stress=")
x=D/d//ratio of maximum diameter to minimum diameter
y=r/d//ratio of radius of fillet to minimum diameter
Kt=1.64
Ms=Kt*Ns
disp(Ms,"Maximum stress=")
