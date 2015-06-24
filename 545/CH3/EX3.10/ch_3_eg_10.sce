clc
disp("the soln of eg 3.10-->Adiabatic Flame Temperature");
u1=1,u2=3.5,u3=2,u4=3                      //moles given 1-C2H6, 2-O2, 3-CO2, 4-H2O
a1=1.648,a2=6.085,a3=5.316,a4=7.7
b1=4.124e-2,b2=.3631e-2,b3=1.4285e-2,b4=.04594e-2
c1=-1.53e-5,c2=-.1709e-5,c3=-.8362e-5,c4=.2521e-5
d1=1.74e-9,d2=.3133e-9,d3=1.784e-9,d4=-.8587e-9
n1=1,n2=4,n3=10,n4=0,t0=298.15,t1=25,e1=1
t1=t1+273.15
//calc. of sum of co-efficients of heat capacity of the rxn.
sa=n1*a1+n2*a2+n3*a3+n4*a4
sb=n1*b1+n2*b2+n3*b3+n4*b4
sc=n1*c1+n2*c2+n3*c3+n4*c4
sd=n1*d1+n2*d2+n3*d3+n4*d4
da=u4*a4+u3*a3-u2*a2-u1*a1
db=u4*b4+u3*b3-u2*b2-u1*b1
dc=u4*c4+u3*c3-u2*c2-u1*c1
dd=u4*d4+u3*d3-u2*d2-u1*d1
h0=(u4*(-57.798)+u3*(-94.05)-u2*0-u1*(-20.236))*1000                //enthalpy of the rxn.
tnew=1000
while e1>1e-6 do t=tnew,
    function f=ft(t),
    f=sa*(t-t1)+(sb/2)*(t^2-t1^2)+(sc/3)*(t^3-t1^3)+(sd/4)*(t^4-t1^4)+h0+da*(t-t0)+(db/2)*(t^2-t0^2)+(dc/3)*(t^3-t0^3)+(dd/4)*(t^4-t0^4)
endfunction
dr=derivative(ft,t),
tnew=t-ft(t)/dr,
e1=abs((tnew-t)/tnew)
end
disp(tnew,"the adiabatic flame temp in K is");