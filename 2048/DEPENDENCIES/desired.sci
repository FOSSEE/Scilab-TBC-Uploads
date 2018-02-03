// Calculation of desired closed loop characteristic polynomial, as discussed in Sec. 7.7.
// 9.4

// function [phi,dphi] = desired(Ts,rise,epsilon)
// Based on transient requirements, 
// calculates closed loop characteristic polynomial

function [phi,dphi] = desired(Ts,rise,epsilon)
Nr = rise/Ts; omega = %pi/2/Nr; rho = epsilon^(omega/%pi); 
phi = [1 -2*rho*cos(omega) rho^2]; dphi = length(phi)-1;
endfunction;
