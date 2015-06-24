//Sone universal constant
h = 6.62*10^-34  //in J.s
c = 3*10^8  //in m/s
Me = 9.11*10^-31  //in kg
conv = 1.6*10^-19  //ev to Joule conversion factor

//calculates the energy difference between the two Energy levels n1 & n2
//M = mass of the particle
//L = width of the region
function [E] = Ediff(n2, n1, M, L)
    E = (n2^2-n1^2)*h^2/(8*M*L^2)
endfunction

//calculates the palnck's wavelength
//E = energy of the particle
function [lambda] = wavelength(E)
    lambda = h*c/E
endfunction

//calculates the palnck's energy
//w = wavelength of the particle
function [E] = Energy(w)
    E = h*c/w
endfunction