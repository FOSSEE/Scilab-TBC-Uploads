// problem 9.4
D=0.15
s=0.3
N=50/60
H=25
Qact=0.0042
Ld=22
d=0.1
a=3.142*D*D/4
Qth=a*s*N
w=9810
power=w*Qth*H/1000
slip=(Qth-Qact)/Qth
W=2*3.142*N
a1=3.142*d*d/4
g=9.81
Had=(Ld*a*W*W*s)/(g*a1*2)
disp(Had,slip*100,power,Qth,"theoritical discharge,theoritical power,percentage slip,acceleration head")
