// problem 9.5
s=0.15
Ls=7
ds=0.075
N=75/60
Hs=2.5
z=16/9
f=0.01
W=2*3.142*N
g=9.81
Has=Ls*z*W*W*ds/g
H=Hs+Has
H1=Has-Hs
Hfs=(4*f*Ls/(ds*2*g))*((z*W*ds)^2)
H2=Hfs+Hs
disp(H2,H1,H,"pressure head:beginningof suction stroke,end of the suction stroke,middle of the suction stroke")
