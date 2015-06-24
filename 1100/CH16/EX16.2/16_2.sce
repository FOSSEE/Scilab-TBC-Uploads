clc
//initialisation of variables
w=10000 //lb/hr
p0=250 //psia
T1=500 //F
Pf=1 //psia
vc=0.949
dc=1
h0=1263.4 //btu/lb
s0=1.5949 //btu/lb R
v2=276 //cu ft/lb
//Calculations
pt=0.55*p0
disp('from tables')
hts=1208.2 //btu/lb
vts=3.415 //cu ft/lb
h2s=891. //btu/lb
Vts=sqrt(2*32.174*778*(h0-hts))
w=w/3600 //lb/sec
cw=1
at=w*vts/(cw*Vts)
printf ('Throat area = %.5f ft^2',at)
V2=sqrt(2*32.174*778*(h0-h2s))
eta=0.9
h2=h0-eta*(h0-h2s)
a2s=w*v2/(cw*V2)
printf ('\n Exit area = %.5f ft^2',a2s)
