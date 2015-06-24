//Example 29.2
clc
A=[-2 0;4 -3]
B=[1 0;0 2]
syms s H1s H2s  U1s U2s
I=eye(2,2)
Gs=inv(s*I-A)*B
Hs=[H1s;H2s]
Us=[U1s;U2s]
Hs=Gs*Us
//On comparing
H1s=Hs(1,1)
H2s=Hs(2,1)
U2s=0;
U1s=1/s;
H1s=eval(H1s)
H2s=eval(H2s)
//On inverse laplace transformations
H1t=ilaplace(H1s,s,t)
H2s=ilaplace(H2s,s,t)
