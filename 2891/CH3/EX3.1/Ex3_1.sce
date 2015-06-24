// Exa 3.1
clc;
clear;
close;
Lm=poly(0,'Lm')// defining Lm as lambda
dl=Lm/40 // dipole length
Rr=80*(%pi)^(2)*(dl/Lm)^2
Rr=horner(Rr,1)
disp(Rr,"radiation resistance of dipole in ohm if dl=Lm/40 :")
dl=Lm/60 // dipole length
Rr=80*(%pi)^(2)*(dl/Lm)^2
Rr=horner(Rr,1)
disp(Rr,"radiation resistance of dipole in ohm if dl=Lm/60 :")
dl=Lm/80 // dipole length
Rr=80*(%pi)^(2)*(dl/Lm)^2
Rr=horner(Rr,1)
disp(Rr,"radiation resistance of dipole in ohm if dl=Lm/80 :")
