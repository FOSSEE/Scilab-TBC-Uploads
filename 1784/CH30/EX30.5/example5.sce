//chapter 30
//example 5
clc
//given
epsilon0=8.85*10^-12 //coul2/nt-m2
A=100*10^-4//area of the plate in square meter
d=1*10^-2 //separation b/w plates in meter
b=5*10^-3 //thickness of dielectric lab in meter
V0=100//in volts
k=7
//(a)
C0=epsilon0*A/d
disp(C0,"(a)Capacitance before the slab is inserted in farad is")
//(b)
q=C0*V0
disp(q,"(b)Free charge in coul is")
//(c)
E0=q/(epsilon0*A)
disp(E0,"(c)Electric field strength in the gap in volts/meter is")
//(d)
E=q/(k*epsilon0*A)
disp(E,"(d)Electric field strength in the dielectric in volts/meter is")
//(e)
//Refer to fig30-12
V=E0*(d-b)+E*b
disp(V,"(e)Potential difference between the plates in volts is")
//(f)
C=q/V
disp(C,"Capacitance with the slab in place in farads is")
