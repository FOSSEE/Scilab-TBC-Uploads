//Example 14.3: output power
clc;
clear;
close;
h=0.6943*10^-6;//
lm=10;//in cm
r1=1.0;//
r2=0.8;//
t1=0.98;//
as=1;//cm^2;//
Ls=2;//cm
gth=((1/(2*lm))*log((1/(r1*r2*(t1)^8))))+(as*Ls)/lm;//
sg=1.5*10^-20;//
ndth=gth/sg;//cm^-3;//
nth=ndth*as*lm;//atoms
ni=5*nth;//atoms
ng=1.78;//
ns=2.7;//
lair=2;//
c=3*10^10;//
trt=((2*ng*lm)/c)+((2*ns*Ls)/c)+((2*lair)/c);//seconds
npmax=((ni-nth)/2)-(nth/2)*log(ni/nth);//photons
L=14;//cm
at=((as*Ls)/L)+((1/(2*L))*log(1/(r1*t1^8)));//
aext=((1/(2*L))*log(1/r2));//
tp=((trt)/(1-(r1*r2*t1^8*exp(-2*as*Ls))));//seconds
hc=6.6*10^-34;//
pmax=((aext/at)*hc*c*npmax)/(h*tp);//in watts
disp(pmax*10^-6,"maximum power in MW is")
//answer is wrong in the textbook
