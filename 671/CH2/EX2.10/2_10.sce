//converting 9v voltage source to current source
I=9/0.45
I=I-7

//KCLs
A=[1/0.45+1/10,-1/10 ; 0.2-1/10,1/10-0.2]
V=inv(A)*[-18;5]

disp(V(2))