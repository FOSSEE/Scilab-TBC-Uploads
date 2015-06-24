//example:-3.1,page no.-72.
// program to determine transmission line parameters.
syms E H Vo P a b Io mue y z Q pi L eipsila G C R Rs w;
E=(Vo/(P*log(b/a)))*exp(-%i*y*z); // in radial direction.
H=(Io/(2*pi*P))*exp(-%i*y*z);   // in phi direction.
H=H*conj(H)*P;
E=E*conj(E)*P;
L=(mue/((Io)^2))*integ(integ(H,P),Q);   // surface integral in culindrical coordinate system
L=limit(L,P,b)-limit(L,P,a);  // limits when integrated w.r.t rho.
L=limit(L,Q,2*pi)-limit(L,Q,0);  // limits when integrated w.r.t phi.
C=(eipsila/(Vo^2))*integ(integ(E,P),Q);  // surface integral in culindrical coordinate system
C=limit(C,P,b)-limit(C,P,a);    // limits when integrated w.r.t rho.
C=limit(C,Q,2*pi)-limit(C,Q,0);  // limits when integrated w.r.t phi.
R=(Rs/(Io^2))*integ(H,Q);   
R=limit(R,P,b)+limit(R,P,a);
R=limit(R,Q,2*pi)-limit(R,Q,0);  // limits when integrated w.r.t phi.
G=((w*eipsila)/(Vo^2))*integ(integ(E,P),Q);  // surface integral in culindrical coordinate system
G=limit(G,P,b)-limit(G,P,a);   // limits when integrated w.r.t rho.
G=limit(G,Q,2*pi)-limit(G,Q,0);  // limits when integrated w.r.t phi.
// result
disp(L,'self-inductance in H/m =')
disp(C,'capacitance in F/m =')
disp(R,'resistance in Ohm/m =')
disp(G,'shunt conductance in S/m =')