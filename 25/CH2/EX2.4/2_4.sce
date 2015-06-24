// example:-2.4,page no.-34.
// program to show that a circularly polarized plane wave can be decomposed in to RHCP and LHCP.
A=sym('A');
B=sym('B');
Eo=sym('Eo');
x=sym('x');
y=sym('y');
Ko=sym('Ko');
z=sym('z');
E=Eo*(x+2*y)*exp(-%i*Ko*z);   // given
// can be written as:=>E=A*(x-y)*exp(-%i*Ko*z)+B*(x+y)*exp(-%i*Ko*z),so
p=[1 1;-%i/2 %i/2];
q=[A;B];
r=[1;1];
p*q==Eo*r;
q=inv(p)*Eo*r;
//result
disp('value of A and B will be=')
disp(q)
disp(q(1,1)*(x-y)*exp(-%i*Ko*z)+q(2,1)*(x+y)*exp(-%i*Ko*z),'E=')
//conclusion:-any linearly polarized wave can be decomposed in to two circularly polarized waves.