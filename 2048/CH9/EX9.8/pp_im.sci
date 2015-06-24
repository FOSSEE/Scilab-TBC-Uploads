// Pole placement controller using internal model principle, as discussed in Sec. 9.4.
// 9.8

// function [Rc,Sc,Tc,gamma,phit] = pp_im(B,A,k,phi,Delta)
// Calculates 2-DOF pole placement controller.  

function [Rc,Sc,Tc,gamm] = pp_im(B,A,k,phi,Delta)

// Setting up and solving Aryabhatta identity
[Ag,Ab] = polsplit3(A); dAb = length(Ab) - 1;
[Bg,Bb] = polsplit3(B); dBb = length(Bb) - 1;

[zk,dzk] = zpowk(k);

[N,dN] = polmul(Bb,dBb,zk,dzk);
dDelta = length(Delta)-1;
[D,dD] = polmul(Ab,dAb,Delta,dDelta);
dphi = length(phi)-1;

[S1,dS1,R1,dR1] = xdync(N,dN,D,dD,phi,dphi);

// Determination of control law
Rc = convol(Bg,convol(R1,Delta)); Sc = convol(Ag,S1);
Tc = Ag; gamm = sum(phi)/sum(Bb); 
endfunction;
