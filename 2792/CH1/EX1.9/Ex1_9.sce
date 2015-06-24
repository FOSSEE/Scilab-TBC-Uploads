clc
h=1.05*10^-34    
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
m = 9.1*10^-31
disp("m = "+string(m)+"kg") //initializing value of mass of electron
n = 10^28
disp("n = "+string(n)+"m^-3") //initializing value of mass of electron
E = (3*(%pi)^(2)*n)^(2/3)*(h^2/(2*m))
disp("The fermi energy at 0K is ,(E[F] = (3*(%pi)^(2)*n)^(2/3)*(h^2/(2*m))= "+string(E)+"J")//calculation
Ef= E/(1.6*10^(-19))
disp("The fermi energy at 0K in eV is ,(E[F] = E/1.6*10^-19)= "+string(Ef)+"eV")//calculation
// Answer givenin the textbook is wrong

 

