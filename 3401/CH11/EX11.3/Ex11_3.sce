clc

Nd=10^16// cm^-3
tox=500*10^-8// a=500A =500*10^-8 cm
Qss=10^11// electronic charge per cm
phims=-1.1// V
e=1.6*10^-19// eV
epsilonox=3.9
epsilon0=8.85*10^-14// F/m
C=((epsilonox*epsilon0)/tox)
disp(C,"the value of C in F/cm^2 is")
Qss=10^11*e
disp(Qss,"the value of Qss in C/cm^2 is")
VFB=phims-(Qss/C)
disp(VFB,"the value of VFB in V is" )
