clc
disp("the solution of eg 2.3 --> minimum fluidization velocity");
P=2*101325      //given data
T=298.15
M=28.97*10^-3
R=8.314
rho=(P*M)/(R*T)
rho_p=1000
dia=1.2*10^-4
ep=.42                //void fraction
sph=.88
meu=1.845*10^-5
t1=1.75*rho*(1-ep)/(sph*dia*ep^3)                      //these are the terms of the function.
t2=150*meu*(1-ep)^2/(sph^2*dia^2*ep^3)
t3=(1-ep)*(rho_p-rho)*9.8
vnew=0.1
e1=1
while e1>1e-6 do v=vnew,function y=Fb(v);
    y=t1*v^2+t2*v-t3,                   //defining fn 
    endfunction,
vdash=derivative(Fb,v),                //differentiating the fn
vnew=v-Fb(v)/vdash,
e1=abs(vnew-v),
end
disp(v,"the minimum fluidisation velocity in m/s is");