//chapter 31
//example2
clc
//given
j=480//current density for copper wire in amp/cm2
N0=6*10^23 //avagadro number in atoms/mole
M=64//molecular wt in gm/mole
d=9.0 //density in gm/cm3
e=1.6*10^-19//elecron charge in coul
n=d*N0/M 
disp(n,"No.of free electrons per unit volume in atoms/mole")
Vd=j/(n*e)
disp(Vd,"Drift speed of electron in cm/sec is")
