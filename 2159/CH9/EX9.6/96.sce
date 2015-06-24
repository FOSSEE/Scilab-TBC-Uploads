// problem 9.6
D=0.08
s=0.15
Hs=3
ds=0.03
g=9.81
Ls=4.5
p=78.86*(1000)
w=9810
W=2*3.142/60
z=(D/ds)^2
Hsep=p/w
Habs=10.3-Hsep
Has=Hsep-Hs
N=((Has*g*2)/(z*W*W*s*Ls))^0.5
disp(N,"maximium speed in rpm at which may run without separation")
