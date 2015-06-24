//example2.2
clc
disp("P=4   psi=21 mWb=21*10^-3 Wb,   N=1120r.p.m")
disp("Coils = 42 and turns/coil = 8")
t=42*8
disp(t,"Total turns = coil * turns/coil = 42*8 =")
z=2*336
disp(z,"Z= 2*total turns = 2*336 =")
disp("i) for lap wound, A=P")
e=(21*1120*672*10^-3)/60
format(8)
disp(e,"Therefore,  E(in V)=(psi*N*Z)/60=")
disp("ii) For wave wound, A=2")
disp("and,  E=263.424 V")
disp("Therefore,    E=(psi*P*N*Z)/120")
n=263.424*120/(21*4*672*10^-3)
disp(n,"N(in rpm)=")
