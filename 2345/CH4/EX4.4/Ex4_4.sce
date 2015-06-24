//Finding electric flux density
//Example 4.4(pg 111)
clc
clear

A=0.02;//surface area of plates in meter square
d=0.001;//distance between the plates in meter
C=4.5*10^-10;//capacitance of the capacitor in farad
//for paralel plate condenser C=KoKA/d
Ko=8.854*10^-12;
//dielectric constant K is given by
K=(C*d)/(Ko*A)
V=15000;//volatage in volts
Q=C*V// charge on condenser in columb
D=Q/A// electric flux density in columb per meter square
printf('Thus the electric flux density is %e C/(m^2)',D)
