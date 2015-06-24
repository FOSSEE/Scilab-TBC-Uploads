//Ex 7.2
clc;clear;close;
format('v',5);
Zs=240;//no. of conductors in stator winding
Zr=48;//no. of conductors in rotor winding
Rr=0.013;//ohm/phase(resstance rotor windig)
XL=0.048;//ohm/phase(leakega reactance)
Vs=400;//V
//(a)
Eo=Vs*Zr/Zs;//V(rotor emf)
disp(Eo,"(a) Rotor emf(V)");
//(b)
S=4/100;//slip
Eo=Eo*S;//V(rotor emf for 4% slip)
disp(Eo,"(b) Rotor emf at 4% slip(V)");
Z=sqrt(Rr^2+(S*XL)^2);//ohm/phase(rotor impedence at 4% slip)
Ir=Eo/Z;//A(Rotor curren at 4% slip)
disp(Ir,"(b) Rotor curren at 4% slip(A)");
//(c)
fi_r=atand(S*XL/Rr);//degree
disp(fi_r,"(c) Phase difference at 4% slip(degree)");
S=100/100;//100% slip
fi_r=atand(S*XL/Rr);//degree
disp(fi_r,"(c) Phase difference at 100% slip(degree)");
