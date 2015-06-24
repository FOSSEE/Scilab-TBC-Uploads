//Converting practical voltage source to current source
I=12/6

//KCLs
A=[0.7,-0.5;-0.5,0.767]
V=inv(A)*[7;2]
disp(V)

I12=(V(1)-V(2))/2
disp(I12)