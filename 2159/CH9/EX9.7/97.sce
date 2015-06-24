// problem 9.7
Hs=5
Ls=10
D=0.15
d=0.1
N=30/60
s=0.15
g=9.81
W=2*3.142*N
w=9810
ha=10.3
z=(D/d)^2
H=(Ls*z*W*W*s/g)
Ph=Hs+H
Phabs=ha-Ph
f=0.01
Hfs=(4*f*Ls/(d*2*g))*((z*W*s)^2)
H1=Hs+Hfs
H1abs=ha-H1
H2=Hs-H
H2abs=ha-H2
Hd=15
Ld=25
H11=(Ld*z*W*W*s/g)
H12=H11+Hd
H12abs=ha+H12
Hfd=(4*f*Ld/(d*2*g))*((z*W*s)^2)
H22=Hd+Hfd
H22abs=ha+H22
H3=Hd-H11
H3abs=ha+H3
a=3.142*D*D/4
Q=a*s*2*N
power=(w*Q*(Hs+Hd+(0.6666*Hfs)+Hfd*0.6666))/1000
disp(H2abs,H1abs,"pressure head at middle and end of suction stroke")
disp(H3abs,H22abs,H12abs,"pressure head at beginning,middle,end of suction stroke")
disp(power,"power in Kw required to drive the pump")
