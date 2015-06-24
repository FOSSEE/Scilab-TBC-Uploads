//Ex1-3
clc
m=9.11*10^(-31)
disp("m = "+string(m)+" Kg") //mass of electron
q=1.6*10^(-19)
disp("q = "+string(q)+" coulomb") //charge on an electron
B=1.5*10^(-3)
disp("B = "+string(B)+ " wb/m^2") //initializing value of magnetic field
l=5*10^(-2)
disp("l = "+string(l)+" metre") //initializing axial length of magnetic field
L=30*10^(-2)
disp("L = "+string(L)+" metre") //initializing value of distance of screen from centre of magnetic field
Va=10000
disp("Va = "+string(Va)+" volts") ////initializing value of anode voltage
disp("horizontal beam velocity,Vx =(2*Va*q/m)^(0.5) metre/second") //formula
Vx =(2*Va*q/m)^(0.5)
disp("horizontal beam velocity,Vx =(2*Va*q/m)^(0.5)= "+string(Vx)+" metre/second")//calculation
disp("radius,r =(m*Vx)/(B*q) metre") //formula
r =(m*Vx)/(B*q)
disp("radius,r =(m*Vx)/(B*q)= "+string(r)+" metre")//calculation
disp("deflection,D =(L*l)/r) metre")//formula
D =(L*l)/r
disp("deflection,D =(L*l)/r)="+string(D)+" metre")//calculation
