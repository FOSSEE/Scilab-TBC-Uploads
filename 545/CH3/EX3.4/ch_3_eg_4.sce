a12=437.98*4.186, a21=1238*4.186, v1=76.92, v2=18.07
                                                               //calc of BPP
clc
disp("the soln of eg 3.4-->");
t=100
x1=.5, R=8.314
a1=16.678,b1=3640.2,c1=219.61
a2=16.2887,b2=3816.44,c2=227.02
x2=1-x1
p1sat=exp(a1-b1/(c1+t))
p2sat=exp(a2-b2/(c2+t))
h12=v2*exp(-a12/(R*(t+273.15)))/v1
h21=v1*exp(-a21/(R*(t+273.15)))/v2
m=h12/(x1+x2*h12)-h21/(x2+x1*h21)
g1=exp(-log(x1+x2*h12)+x2*m)
g2=exp(-log(x2+x1*h21)-x1*m)
p=x1*g1*p1sat+x2*g2*p2sat
disp(p,"boiling point pressure in kPa is");
                                                               //calc of BPT
p=101.325,x1=.5, e=1
x2=1-x1
t1sat=b1/(a1-log(p))-c1
t2sat=b2/(a2-log(p))-c2
tnew=x1*t1sat+x2*t2sat
while e>10^-4 do told=tnew,
    p1sat=exp(a1-b1/(c1+told)),p2sat=exp(a2-b2/(c2+told)),
    p1sat=p/(g1*x1+g2*x2*(p2sat/p1sat))
    tnew=b1/(a1-log(p1sat))-c1,
    e=abs(tnew-told)
end
disp(tnew,"boiling point temperature in Celsius is");
                                                              //calc of dpp
e1=1, e2=1, e3=1, pold=1
t=100,y1=.5
y2=1-y1
p1sat=exp(a1-b1/(c1+t))
p2sat=exp(a2-b2/(c2+t))
g1=1, g2=1, g11=1, g22=1
pnew=1/(y1/(g1*p1sat)+y2/(g2*p2sat))
while e1>.0001 do pold=pnew, while e2>.0001& e3>.0001 do g1=g11,g2=g22,
                              x1=y1*pold/(g1*p1sat)
                              x2=y2*pold/(g2*p2sat)
                              x1=x1/(x1+x2)
                              x2=1-x1
                              h12=v2*exp(-a12/(R*(t+273.15)))/v1
                              h21=v1*exp(-a21/(R*(t+273.15)))/v2
                              m=h12/(x1+x2*h12)-h21/(x2+x1*h21)
                              g11=exp(-log(x1+x2*h12)+x2*m)
                              g22=exp(-log(x2+x1*h21)-x1*m)
                              e2=abs(g11-g1), e3=abs(g22-g2)
                          end
       pnew=1/(y1/(g1*p1sat)+y2/(g2*p2sat))
       e1=abs(pnew-pold)
    end
   disp(pnew,"dew point pressure  in kPa is");
                                                            //calc dpt
p=101.325,y1=.5, e4=1, e5=1,e6=1
y2=1-y1
t1sat=b1/(a1-log(p))-c1
t2sat=b2/(a2-log(p))-c2
tnew=y1*t1sat+y2*t2sat
g11=1, g22=1
while e4>.0001 do told=tnew,
    p1sat=exp(a1-b1/(c1+told))
    p2sat=exp(a2-b2/(c2+told)), while e5>.0001 & e6>.0001 do g1=g11, g2=g22,
    x1=y1*p/(g1*p1sat)
    x2=y2*p/(g2*p2sat)
    x1=x1/(x1+x2)
    x2=1-x1
    h12=v2*exp(-a12/(R*(t+273.15)))/v1
    h21=v1*exp(-a21/(R*(t+273.15)))/v2
                              m=h12/(x1+x2*h12)-h21/(x2+x1*h21)
                              g11=exp(-log(x1+x2*h12)+x2*m)
                              g22=exp(-log(x2+x1*h21)-x1*m)
                              e5=abs(g11-g1), e6=abs(g22-g2)
                          end
                          
       p1sat=p*(y1/g1+y2*p1sat/(g2*p2sat))
       tnew=b1/(a1-log(p1sat))-c1
       e4=abs(tnew-told)
    end
   disp(tnew,"dew point temperature  in Celsius is");