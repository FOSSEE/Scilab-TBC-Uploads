//permitivity constant
Eo = 8.85*10^-12  //in C^2/N.m^2
//electric consatnt
k = 1/(4*%pi*Eo)
//charge on proton
e = 1.6*10^-19  //in C

//calculates coloumb force on two charged particle having charge q1, q2 seprated by distance equal to r
function [F] = coulomb(q1, q2, r)
    F = k*q1*q2/r^2
endfunction

//calculates the potential due to a particle having charge q at a distance d from the particle
function [V] = EPotential(q, r)
    V = k*q/r
endfunction