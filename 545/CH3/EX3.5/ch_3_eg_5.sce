clc
disp("the soln of eg 3.5-->Flash calc. using Modified Raoult law");
a12=292.66*4.18, a21=1445.26*4.18, v1=74.05*10^-6, v2=18.07*10^-6, R=8.314
t=100,z1=.3,
z2=1-z1
a1=14.39155, a2=16.262, b1=2795.82, b2=3799.89, c1=230.002, c2=226.35
e1=1,e2=1,e3=1,e4=1,e5=1,e6=1,vnew=0
                                             //calc of BPP
x1=z1, x2=z2
p1sat=exp(a1-(b1/(t+c1)))
p2sat=exp(a2-(b2/(t+c2)))
h12=v2*exp(-a12/(R*(t+273.15)))/v1
h21=v1*exp(-a21/(R*(t+273.15)))/v2
m=(h12/(x1+x2*h12))-(h21/(x2+x1*h21))
g1=exp(-log(x1+x2*h12)+x2*m)
g2=exp(-log(x2+x1*h21)-x1*m)
p=x1*g1*p1sat+x2*g2*p2sat
disp(p,"the bubble point pressure is");
bpp=p, gb1=g1, gb2=g2                          //g1 & g2 are activity co-efficients
                                               //calc of DPP
y1=z1, y2=z2
g1=1, g2=1
pnew=1/(y1/(g1*p1sat)+y2/(g2*p2sat))
g1n=g1, g2n=g2
while e1>.0001 do pold=pnew,while e2>.0001& e3>.0001 do g1=g1n, g2=g2n,
    x1=y1*pold/(g1*p1sat)
    x2=y2*pold/(g2*p2sat)
    x1=x1/(x1+x2)
    x2=1-x1
    g1n=exp(-log(x1+x2*h12)+x2*m)
    g2n=exp(-log(x2+x1*h21)-x1*m)
    e2=abs(g1n-g1), e3=abs(g2n-g2)
end
pnew=1/(y1/(g1n*p1sat)+y2/(g2n*p2sat))
e1=abs(pnew-pold)
end
disp(pnew,"the dew point pressure is");
dpp=pnew, gd1=g1n, gd2=g2n
p=200
v=(bpp-p)/(bpp-dpp)
g1=((p-dpp)*(gb1-gd1))/(bpp-dpp)+gd1
g2=((p-dpp)*(gb2-gd2))/(bpp-dpp)+gd2

//calc of distribution co-efficients
while e4>.0001 & e5>.0001 do g1n=g1,g2n=g2,
    k1=g1n*p1sat/p
    k2=g2n*p2sat/p
    while e6>.00001 do v=vnew,
        function f=fv(v),
        y1=(k1*z1)/(1-v+v*k1)
        y2=(k2*z2)/(1-v+v*k2)
        x1=y1/k1
        x2=y2/k2    
        f=y1-x1+y2-x2
        endfunction
        derv=derivative(fv,v)
        vnew=v-fv(v)/derv
        e6=abs(vnew-v)
    end
    h12=v2*exp(-a12/(R*(t+273.15)))/v1
    h21=v1*exp(-a21/(R*(t+273.15)))/v2
    m=(h12/(x1+x2*h12))-(h21/(x2+x1*h21))
    g1=exp(-log(x1+x2*h12)+x2*m)
    g2=exp(-log(x2+x1*h21)-x1*m)
    e4=abs(g1-g1n), e5=abs(g2-g2n)
end
disp(v,"the no. of moles in vapour phase is");
disp(y1,x1,"x1 and y1 respectively are");