// problem 10.9
Q=0.05
p=392.4*1000
n=0.65
s=0.8
w1=9810
Hw=p/w1
Hoil=p/(w1*s)
Pw=(w1*Q*Hw)/(n*1000)
Poil=(w1*s*Q*Hoil)/(n*1000)
disp(Pw,Poil,"power in Kw to drive the pump with water and oil of s,p=0.8")
