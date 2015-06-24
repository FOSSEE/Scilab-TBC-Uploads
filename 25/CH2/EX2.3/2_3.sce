// example:-2.3,page no.-31.
//program to find the resulting fields by assumibg plane waves on either side of the current sheet and enforcing the boundary conditions.
syms E x E1 E2 H1 H2 z Jo A B c N n d ko y;
sym('n*(E2-E1)=0');   //boundary condition to be satisfied at z=0
sym('z*(E2-E1)=0');   //   "       "         "         "
sym('n*(H2-H1)=Jo');  //   "       "         "         "
sym('z*(H2-H1)=Jo');  //   "       "         "         "
E1=A*N*exp(%i*ko*z)*x;  // x component of electric field (region z<0).
H1=A*N*exp(%i*ko*z)*(-y); // -y component of magnetic field (region z<0).
E2=B*N*exp(-%i*ko*z)*x;   // x component of electric field (region z>0).
H2=B*N*exp(-%i*ko*z)*y;   // y component of electric field (region z>0).
disp(E1,'for z<0, E1=')
disp(H1,'for z<0, H1=')
disp(E2,'for z>0, E2=')
disp(H2,'for z>0, H2=')
//from boundary conditions imposed.we get:-
c=[-1 -1;1 -1];
d=[A;B];
c*d==[Jo;0];
d=inv(c)*[Jo;0];
//result
// A=-Jo/2; B=-Jo/2.
disp(d)