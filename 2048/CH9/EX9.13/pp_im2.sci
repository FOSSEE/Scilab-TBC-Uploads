// Pole placement controller without intra sample oscillations, as discussed in Sec. 9.5.
// 9.13

// function [Rc,Sc,Tc,gamma,phit] = pp_im2(B,A,k,phi,Delta,a)
// 2-DOF PP controller with internal model of Delta and without
// hidden oscillations

function [Rc,Sc,Tc,gamm,phit] = pp_im2(B,A,k,phi,Delta,a)

if argn(2) == 5, a = 1; end
dphi = length(phi)-1;

// Setting up and solving Aryabhatta identity
[Ag,Ab] = polsplit3(A,a); dAb = length(Ab) - 1;
[Bg,Bb] = polsplit3(B,a); dBb = length(Bb) - 1;

[zk,dzk] = zpowk(k);

[N,dN] = polmul(Bb,dBb,zk,dzk);
dDelta = length(Delta)-1;
[D,dD] = polmul(Ab,dAb,Delta,dDelta);

[S1,dS1,R1,dR1] = xdync(N,dN,D,dD,phi,dphi);

// Determination of control law
Rc = convol(Bg,convol(R1,Delta)); Sc = convol(Ag,S1);
Tc = Ag; gamm = sum(phi)/sum(Bb); 

// Total characteristic polynomial
phit = convol(phi,convol(Ag,Bg));
endfunction;
