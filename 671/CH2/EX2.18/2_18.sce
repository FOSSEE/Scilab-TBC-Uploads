//Nodal Equations

A=[0.6,-0.5;2,-1.6]
V=inv(A)*[4;0]
V12=V(1)-V(2)
disp(V12)