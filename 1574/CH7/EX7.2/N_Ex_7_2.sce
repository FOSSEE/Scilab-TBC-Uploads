clc
//Chapter7
//Example7.2, page no 276
//Given
mue=25//
rp=5e3
Rl=10e3
C=1e-9
gm=mue/rp
Req=2.5/gm
//disp(Req , gm)
k=1.381e-23
T=293
R1=1e5
// Power density spectrum for respective res
d1=2*k*T*R1
d2=2*k*T*Req
d3=2*k*T*Rl
xo=0
x1=1e14
w=0:%inf
//H1(w)=(-gm*rp*Rl)/(rp+Rl+(%i*w*rp*Rl*C))
Vo=sqrt((20231.65e2/%pi)*integrate('1/(((3e9)^2)+(w^2))','w',xo,x1))
mprintf('The mean square noise voltage is: %f mV',Vo*1e3)


