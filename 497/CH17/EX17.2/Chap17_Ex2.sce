//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-17, Example 2, Page 438
//Title: Design of a Commercial Acrylonitrile Reactor
//==========================================================================================================

clear
clc

//INPUT
deltaHr=5.15E8;//Heat of reaction in J/k mol
W=5E4;//Weight of acrylonitirle produced per 334-day year in tonnes
db=0.07;//Estimated bubble size in m
dte=0.7;//Equivalent diameter in m
Kf12=0.35;//Effective rate constant in s^-1 from Example 1
dp=60;//Particle size in micrometer
ephsilonm=0.50;//Void fraction of fixed bed
ephsilonmf=0.55;//Void fraction at minimum fluidized condition
T=460;//Temperature in reactor in degree C
Pr=2.5;//Pressure inside reactor in bar
//Feed gas composition
x1=1;//Propylene
x2=1.1;//Ammonia
x3=11;//Air
do1=0.08;//OD of heat exchanger tubes in m\
L=7;//Length of tubes in m
ho=300;//Outside heat transfer coefficient in W/m^2 K
hi=1800;//Inside heat transfer coefficient in W/m^2 K
Tc=253.4;//Temperature of coolant in degree C
pi=3.14;

//CALCULATION
//Preliminary calculation
uo=0.46;//Superficial gas velocity from Fig.E1(a) for the value of Kf12 & db
tou=8;//Space time from Fig.E2(b) for highest concentraion of product R
Lm=uo*tou/(1-ephsilonm);
y=0.58;//CR/CAi from Fig.E1(c) for the value of tou & Kf12
XA=0.95//From Fig.E1(c) for the value of tou & Kf12
SR=y/XA;//Selectivity of R

//Cross-sectional area of the reactor
P=W*10^3/(334*24*3600);//Production rate of acrylonitrile
F=(P/0.053)/(SR*XA/0.042);//Feed rate of propylene
V=((F*22.4*(T+273)*(x1+x2+x3))/(42*273*Pr));
At=V/uo;//Cross-sectional area of reactor needed for the fluidized bed

//Heat exchanger calculation
q=F*XA*deltaHr/42;//Rate of heat liberation in the reactor
U=(ho^-1+hi^-1)^-1;//Overall heat transfer coefficient
deltaT=T-Tc;//Driving force for heat transfer
Aw=q/(U*deltaT);//Heat exchanger area required to remove q
Nt=Aw/(pi*do1*L);
li1=(At/Nt)^0.5;//Pitch for square pitch arrangement
dte1=4*[li1^2-(pi/4)*do1^2]/(pi*do1);
if dte1>dte then li=(pi/4*dte*do1+pi/4*do1^2)^0.5;//Pitch if we add dummy tubes
end
f=li^2-pi/4*do1^2;//Fraction of bed cross section taken up by tubes
dt1=sqrt(4/pi*At/(1-f));//Reactor diameter including all its tubes

//OUTPUT
printf('\nSuperficial gas velocity=%fm/s',uo);
printf('\nNo. of %1.0fm tubes required=%1.0f',L,Nt);
printf('\nReactor diameter=%fm',dt1);

//====================================END OF PROGRAM ======================================================