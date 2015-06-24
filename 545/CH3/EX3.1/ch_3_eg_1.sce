clc
disp("the soln of eg 3.1-->Cubic eqn. of state");
disp("all values in m3/mol");
T=373.15, P=101325, Tc=647.1, Pc=220.55*10^5, w=.345, R=8.314
Tr=T/Tc, Pr=P/Pc,                  //reduced pressure & reduced temperature
b0=.083-.422*Tr^-1.6
b1=.139-.172*Tr^-4.2
B=(b0+w*b1)*R*Tc/Pc
vnew=1
e1=1, vold=R*T/P+B
disp(vold,"the soln by virial gas eqn. of volume in m3/mol by Z(T,P) is");
while e1>1e-6 do vold=vnew,function y=Fh(vold),
        y=P*vold/(R*T)-1-B/vold
endfunction;
ydash=derivative(Fh,vold);
vnew=vold-Fh(vold)/ydash;
e1=abs(vold-vnew)
end
disp(vold,"the soln by virial gas eqn. of volume in m3/mol by Z(T,V) is");
//by peng robinson method
k=.37464+1.54226*w-.26992*w^2
s=1+k*(1-Tr^.5)
lpha=s^2
a=.45724*R^2*Tc^2*lpha/Pc
b=.0778*R*Tc/Pc
vnew=b,e2=1,
vol=b, fe=0, fd=0
disp("the volume of saturated liq. and saturated vapour by peng-robinson method respectively is")
for i=0:2 do
        vol=vnew
        y2=vol^3*P+vol^2*(P*b-R*T)-vol*(3*P*b^2+2*b*R*T-a)+P*b^3+b^2*R*T-a*b
ydash2=3*P*vol^2+(P*b-R*T)*2*vol-(3*P*b^2+2*b*R*T-a)
vnew=vol-y2/ydash2,
e2=abs(vol-vnew)
if i==1 & e2<1e-6 then fd=vnew,vnew=R*T/P,
end
end
disp(vol,fd);
funcprot(0)
//by redlich-kwong method
i=0
a=.42748*R^2*Tc^2.5/Pc
b=.08664*R*Tc/Pc
Vnew=b,e3=1
disp("the vol of saturated liq. and vapour by redlich kwong method respectively are");
for i=0:2 do V=Vnew,function y3=gh(V),
            y3=V^3*P-R*T*V^2-V*(P*b^2+b*R*T-a/sqrt(T))-a*b/sqrt(T)
        endfunction,
        deriv=derivative(gh,V);
        Vnew=V-gh(V)/deriv;
        e3=abs(Vnew-V)
        if i==1 & e3<1e-6 then de=Vnew,Vnew=R*T/P          //for saturated liq.
        end
      end
    disp(V,de);              
//vander waals method
i=0
a=27*R^2*Tc^2/(64*Pc)
b=R*Tc/(8*Pc)
vnew=b, v=b,e=1
for i=0:2 do v=vnew,function v3=bh(v),
        v3=v^3*P-v^2*(P*b+R*T)+a*v-a*b,
    endfunction
    deriva=derivative(bh,v),
    vnew=v-bh(v)/deriva
    e4=abs(v-vnew),
    if i==1 & e4<10^-6 then sol=vnew,vnew=R*T/P
    end
end
disp("the vol of saturated liq. and vapour by vander waal method respectively are");
disp(vnew,sol);