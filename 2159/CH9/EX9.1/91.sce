// problem 9.1
D=0.15
s=0.25
N=50
Hs=5
Hd=5
n1=0.6
n2=0.78
g=9.81
w=g*1000
a=3.142*D*D/4
Fs=(w*a*Hs)/n1
Fd=(w*a*Hd)/n2
P=((Fs+Fd)*s*N)/(1000*60)
disp(P,"power required by the pump in Kw")
