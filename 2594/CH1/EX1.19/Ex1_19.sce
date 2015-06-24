clc
a=5.43*10^-8
disp(" a = "+string(a)+"cm") //initializing value of lattice constant.
Wa=28.1
disp(" Wa = "+string(Wa)) //initializing value of atomic weight.
Na=6.02*10^23
disp(" Na = "+string(Na)) //initializing value of avagdro number.
ns=5*10^22
disp(" ns = "+string(ns)+"atoms/cm^3") //initializing value of atoms/cm^3.
D =(ns*Wa)/(Na)
disp(" Density of silicon,D =(ns*Wa)/(Na) = "+string(D)+" gm/cm^2")//calculation
