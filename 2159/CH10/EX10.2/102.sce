//problem 10.2
Hs=2
Hd=20
Hfs=1
Hfd=5
Q=1/60
N=1450/60
ds=0.1
dd=ds
n=0.75
g=9.81
w=9810
a=3.142*ds*ds/4
Vs=Q/a
Vd=Vs
Ht=Hs+Hd+Hfs+Hfd+(Vs*Vs/(2*g))+(Vd*Vd/(2*g))
Pi=(w*Q*Ht)/(n*1000)
Ns=((N*(Q^0.5))/(Ht^0.75))*60
disp(Ns,Pi,Ht,"total head developed by the pump,power input to the pump,specific speed of pump in r.p.m")
