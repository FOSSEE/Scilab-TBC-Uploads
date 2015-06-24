clc
h=1.05*10^-34    
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
m = 9.1*10^-31
disp("m = "+string(m)+"kg") //initializing value of mass of electron
E = 0.1
disp("E = "+string(E)+" eV") //initializing value of energy of electron
N = [sqrt(2)*(m)^(3/2)]/[(%pi)^2*(h)^3]
disp("density of states in 3D is ,(N(E) = [sqrt(2)*(m)^(3/2)]/%pi^2*h^3)= "+string(N)+"E^1/2 J^-1m^-3")//calculation
//Expressing E in eV and the density of states in commonly used units of eV^-1cm^-3
N1 = 6.8*10^21*sqrt(E)
disp("density of states in 3D is ,(N(E)= 6.8*10^21*sqrt(E))= "+string(N1)+"eV^-1cm^-3")//calculation




