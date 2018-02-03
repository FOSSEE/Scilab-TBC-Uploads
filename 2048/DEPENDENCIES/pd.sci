// PD control law from polynomial coefficients, as explained in Sec. 9.8.
// 9.22

function [K,taud,N] = pd(Rc,Sc,Ts)

// Both Rc and Sc have to be degree one polynomials

s0 = Sc(1); s1 = Sc(2);
r1 = Rc(2);
K = (s0+s1)/(1+r1);
N = (s1-s0*r1)/r1/(s0+s1);
taudbyN = -Ts*r1/(1+r1);
taud = taudbyN * N;
endfunction;
