// problem 9.3
D=0.15
s=0.3
Hs=3
Hd=30
n=0.8
a=3.142*D*D/4
N=60/60
w=9810
Q=0.62/60
Qth=(2*a*s*N)
slip=(Qth-Q)/Qth
power=(w*Qth*(Hs+Hd))/(1000*n)
disp(slip*100,power,"power in Kw required to drive the pump,percentage slip")
