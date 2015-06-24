//signals and systems
//state space
//time domain method to find the state vector
clc;
clf;
s=poly(0,'s');
A=[s+12 -2/3; 36 s+1];
y=roots(det(A))
t=poly(0,'t');
beta=inv([1 y(1); 1 y(2)])*[%e^-y(1)*t; %e^-y(2)*t];
disp(beta)
size(beta)
W=beta(1)*[1 0;0 1]+ beta(2)*[-12 2/3;-36 -1];
zir=W*[2;1];
disp(zir);
zsr=W*[1/3;1];
disp(zsr);
total=zir+zsr;
disp(total);
