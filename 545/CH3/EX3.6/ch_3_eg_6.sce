clc
disp("the soln of eg 3.6-->Vapour Pressure using Cubic Eqn. of State")
t=373.15, tc=647.1, pc=220.55*10^5, w=.345,R=8.314            //given
f1=1, e1=1, e2=1, vnew=1, pnew=1             //assumed values
k=.37464+1.54226*w-.26992*w*2
s=(1+k*(1-(t/tc)^.5))^2,
a=.45724*R*R*tc*tc*s/pc
b=.0778*R*tc/pc
//calc of vol. of liq.
while f1>10^-4 do p=pnew,vnew=b, 
t1=(p*b-R*t)                       //co-efficients of vol. in the eqn.
t2=3*p*b^2+2*b*R*t-a
t3=p*b^3+b^2*R*t-a*b
    while e1>1e-6 & vnew>0 do vold=vnew,
          y1=vold^3*p+vold^2*t1-vold*t2+t3,
          der=3*vold^2*p+2*vold*t1-t2
          vnew=vold-y1/der
          e1=abs(vnew-vold)
end
vliq=vold,
//fugacity of liq.
zliq=p*vliq/(R*t)
c=(a/(2*1.414*b*R*t))*(log((vliq+(1+sqrt(2))*b)/(vliq+(1-sqrt(2))*b))),
t5=zliq-p*b/(R*t)
fl2=p*exp(zliq-1-log(t5)-c),
vvnew=R*t/p,                 //assumed value close to the ideal value
//calc of vol. of vapour
while e2>1e-6 do vvold=vvnew,
            x2=vvold^3*p+vvold^2*t1-vvold*t2+t3,
          der1=3*vvold^2*p+2*vvold*t1-t2,
    vvnew=vvold-x2/der1
e2=abs(vvnew-vvold)
end
//fugacity of vapour
vvap=vvold,zvap=p*vvap/(R*t),
d=(a/(2*sqrt(2)*b*R*t))*(log((zvap+(1+sqrt(2))*b*p/(R*t))/(zvap+(1-sqrt(2))*p*b/(R*t))))
t6=zvap-p*b/(R*t)
fv2=p*exp(zvap-1-log(t6)-d)
pnew=p*fl2/fv2                      //updating the value of P
f1=abs((fl2-fv2)/fv2)
end
disp(p,"the vapour pressure of water in Pa is");