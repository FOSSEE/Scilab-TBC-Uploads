clc
disp("the soln of eg 3.7-->P-x-y calc. using Gamma-Phi approach");
et=1,er=1,sold=0, snew=0             //assumed values
R=8.314,t=100, x1=.958, a12=107.38*4.18, a21=469.55*4.18,
tc1=512.6,tc2=647.1,pc1=80.97*10^5,pc2=220.55*10^5,w1=.564,w2=.345,zc1=.224,zc2=.229,v1=40.73*10^-6, v2=18.07*10^-6                     //given data
x2=1-x1,
a1=16.5938, a2=16.262, b1=3644.3, b2=3799.89, c1=239.76, c2=226.35
p1sat=exp(a1-b1/(c1+t))*1000                         //Saturation Pressure
p2sat=exp(a2-b2/(c2+t))*1000
t=t+273.15                                           //Temp in Kelvin req.
h12=(v2/v1)*exp(-a12/(R*t))
h21=(v1/v2)*exp(-a21/(R*t))
z=h12/(x1+x2*h12)-h21/(x2+x1*h21)
g1=exp(-log(x1+x2*h12)+x2*z)                          //Activity Co-efficients
g2=exp(-log(x2+x1*h21)-x1*z)
tr1=t/tc1                                 //Reduced Temp.
b0=.083-.422*tr1^-1.6
b1=.139-.172*tr1^-4.2
b11=(R*tc1/pc1)*(b0+b1*w1)
tr2=t/tc2
b0=.083-.422*tr2^-1.6
b1=.139-.172*tr2^-4.2
b22=(R*tc2/pc2)*(b0+b1*w2)
w12=(w1+w2)^.5
tc12=(tc1*tc2)^.5
zc12=(zc1+zc2)^.5
vc1=zc1*R*tc1/pc1, vc2=zc2*R*tc2/pc2
vc12=((vc1^.33+vc2^.33)/2)^3
pc12=zc12*R*tc12/vc12
tr12=t/tc12
b0=.083-.422*tr12^-1.6
b1=.139-.172*tr12^-4.2
b12=(R*tc12/pc12)*(b0+b1*w12)
d12=2*b12-b11-b22
p=x1*g1*p1sat+x2*p2sat*g2
y1=x1*g1*p1sat/p, y2=x2*g2*p2sat/p
pnew=p,
//calc of Pressure
while et>1e-6 do p=pnew,
    f1=p1sat*(exp(b11*p1sat/(R*t)))*(exp((v1*(p-p1sat)/(R*t))))
f2=p2sat*(exp(b22*p2sat/(R*t)))*(exp((v2*(p-p2sat)/(R*t))))
while er>1e-6 do sold=snew,
    fc1=exp((p/(R*t))*(b11+y2^2*d12))
 fc2=exp((p/(R*t))*(b22+y1^2*d12))
    k1=g1*f1/(fc1*p)
k2=g2*f2/(fc2*p)
snew=x1*k1+x2*k2
y1=x1*k1/snew
y2=x2*k2/snew
er=abs(snew-sold)
end
pnew=(x1*g1*f1/fc1)+(x2*g2*f2/fc2)
y1=x1*g1*f1/(fc1*pnew)
y2=x2*g2*f2/(fc2*pnew)
et=abs(pnew-p)
end
disp(p,y1,"the amt. of methanol in vapour phase  and system pressure in Pa respectively are")