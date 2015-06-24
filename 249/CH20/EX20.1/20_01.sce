clear
clc
uo=0.3;umf=0.03;//m/s
vo=0.3*3.14159;//m3/s
d=2;//m
db=0.32;//dia of bubble(m)
emf=0.5;
W=7000;//kg
CAo=100;//mol/m3
D=20*10^-6;//m2/s
density=2000;//kg/m3
k=0.8;
alpha=0.33;
g=9.8;//m/s2
//Using bubbling bed model
//Rise velocity of bubbles
ubr=0.711*sqrt(g*db);
ub=uo-umf+ubr;
delta=uo/ub;
ef=1-(1-emf)*(1-delta);
Kbc=4.5*(umf/db)+5.85*(D^0.5)*(g^0.25)/(db^1.25);
Kce=6.77*sqrt(emf*D*ubr/db^3);
fb=0.001;
fc=delta*(1-emf)*((3*umf/emf)/(ubr-umf/emf)+alpha);
fe=(1-emf)*(1-delta)-fc-fb;
ft=fb+fe+fc;
A=3.14*d*d/4;
Hbfb=W/((density*A)*(1-ef));
XA=1-inv(exp(fb*k+(1/((1/(delta*Kbc))+1/((fc*k)+(1/((1/(delta*Kce))+(1/(fe*k)))))))*(Hbfb*ft/uo)/ft));
XA1=100*XA;//in percentage
printf("\n Part a")
printf("\n Conversion of reactant is %f ",XA1)
CA_avg=CAo*XA*vo*density/(k*W);
printf("\n Part b")
printf("\n The proper mean concentration(mol/m3) of A seen by solid is %f",CA_avg)
XA1=1-inv(exp(k*ft*Hbfb/uo));
printf("\n Part c")
printf("\n Conversion of reactant for packed bad is %f",XA1)