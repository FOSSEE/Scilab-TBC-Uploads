//convert current source to voltage source

V1=4*2
V2=2*2

//Mesh Analysis

A=[7,-3;-15,19]
I=inv(A)*[6;-14]

Vx=3*(I(1)-I(2))
disp(Vx)