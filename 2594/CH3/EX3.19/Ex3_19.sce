clc
D=120
disp("D = "+string(D)+" A/cm^2") //initializing value of drift current density.
E=5
disp("E = "+string(E)+" V/cm") //initializing value of electric field.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
p=(D/(450*e*E))
disp("thermal equilibrium value of hole concentration ,p=(D/(450*e*E)))= "+string(p)+" /cm^3")//calculation

