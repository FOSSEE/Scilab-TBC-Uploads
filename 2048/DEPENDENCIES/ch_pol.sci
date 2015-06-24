// function [phi,psi] = ch_pol(N,epsilon)
// Returns desired characteristic polynomial and numerator
// N = rise time in number of sample times
// epsilon = overshoot as a fraction of ss gain

function [phi,psi] = ch_pol(N,epsilon)
omega = %pi/2/N; r = epsilon^(omega/%pi);
phi = [1 -2*r*cos(omega) r^2];
psi = [1-r*cos(omega) (r^2-r*cos(omega))];
endfunction;
