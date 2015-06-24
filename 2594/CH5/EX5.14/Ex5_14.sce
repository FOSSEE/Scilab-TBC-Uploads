clc
Na=10^16
disp("Na = "+string(Na)+"/cm^3") //initializing value of acceptor concentration.
Nd=10^18
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of donor concentration .
A=1
disp("A = "+string(A)+"cm^2") //initializing value of area for finding junction capacitance per unit area .
Vj=0.54
disp("Vj = "+string(Vj)+"V") //initializing value of built in voltage.
Va=10
disp("Va = "+string(Va)+"V") //initializing value of applied reverse voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Cj=sqrt((e*E*A^2/(2*(Va+Vj)))*((Na*Nd)/(Na+Nd)))
disp("Cj=sqrt((e*E*A^2/(2*(Va+Vj))*((Na*Nd)/(Na+Nd))))="+string(Cj)+"f/cm^2")//calculation.


