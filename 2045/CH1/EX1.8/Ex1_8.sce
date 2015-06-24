//pagenumber 30 example 8
clear
area=1.5*10^-2;//centimetre square
w=1.6;//centimetre
resist=20;//ohm centimetre
durati=60*10^-6;//second in book given as mili
quanti=8*10^15;//photons per second


//(1) resistance at each photon gives a electron hole pair
up=1800;//centimetre square per velocity second
un=3800;//centimetre square per velocity second
q=1.6*10^-19;//coulomb
ni=2.5*10^13;//per cubic centimetre
sigma1=1/resist;
z1=3800;
z=-sigma1/q;
u=ni^2/up;
n=poly([(z1) z u],'n');
roots(n);
n=7.847*10^13;//n>ni taken so it is admissible
p1=ni^2/n;
volume=w*area;
nchang=quanti*durati/volume;
pchang=nchang;
sigm11=q*((n+nchang)*un+(pchang+p1)*up);
resis1=1/sigm11;
r1=resis1*w/area;
disp("resistance   =   "+string((r1))+"ohm");//book only one resistance has been given



