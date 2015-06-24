//Transport Processes and Seperation Process Principles
//Chapter 12
//Example 12.5-2
//Liquid Liquid and Fluid Solid Seperation Process
//given data
ya=0.04;//concn of A in upper layer
yb=0.02;//concn of B in upper layer
yc=0.94;//concn of C in upper layer
xa=0.12;//concn of A in lower layer
xb=0.86;//concn of B in lower layer
xc=0.02;//concn of C in lower layer
M=100;//mass of mixture in kg
xam=0.1;
//Material Balance Equations
//eq 1: V+L=M
//eq 2:ya*V+xa*L=xam*M
A=[1 1;ya xa];
B=[M; M*xam];
X=inv(A)*B
V=X(1,1);
L=X(2,1);
mprintf("amt of vapour phase=%f kg ",V)
mprintf("amt of liquid phase=%f kg ",L)
