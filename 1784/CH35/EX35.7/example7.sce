//chapter 35
//example7
clc
//given
//refer to fig 35-16
B=2 //magnetic field in wb/m2
l=10*10^-2 //in m
v=1.0 //in m/sec
q=1.6*10^-19 //charge in coul
disp("Let S be the frame of reference fixed w.r.t  the magnet and Z be the frame of reference w.r.t the loop")
//(A)
E=v*B
disp(E,"(A)  Induced electric field in volt/m observed by Z")
//(B)
F=q*v*B
disp(F,"(B)  Force acting on charge carrier in nt w.r.t S is")
F1=q*E
disp(F1,"     Force acting on charge carrier in nt w.r.t Z is")
//(C)
emf1=B*l*v
disp(emf1,"(C)  Induced emf in volt observed by S is")
emf2=E*l
disp(emf2,"Induced emf in volt observed by Z is")
