//Example 14.4.
clc
format(6)
A=400
f1=50
f2=200*10^3
D=10
beta=0.01
disp("The voltage gain with feedback")
Af=A/(1+(A*beta))
disp(Af,"  Af = A / (1 + A*beta) =")
disp("New lower 3dB frequency,")
f1f=f1/(1+(A*beta))
disp(f1f,"  f_1f(Hz) = f1 / 1+A*beta =")
disp("New upper 3dB frequency,")
f2f=(1+(A*beta))*f2
x2=f2f*10^-6
disp(x2,"  f2f(MHz) = (1+A*beta)*f2 =")
disp("Distortion with feedback,")
Df=D/(1+(A*beta))
disp(Df,"  Df (in %) = D / 1+A*beta =")