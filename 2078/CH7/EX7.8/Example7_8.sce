//Exa 7.8
clc;
clear;
close;
format('v',5);
//Given data :
f=50;//Hz
l=160;//km
r=1.036/2;//cm
d=2.44*100;//cm
g0=21.1;//kV/cm(rms)
m0=0.85;//irregularity factor
mv=0.72;//roughness factor
b=73.15;//cm
t=26.6;//degree C
del=3.92*b/(273+t);//air density factor
Vd0=g0*del*m0*r*log(d/r);//kV(rms)
disp(Vd0,"Critical disruptive voltage(rms) in kV : ");
Vv0=g0*del*mv*r*(1+0.3/sqrt(del*r))*log(d/r);//kV
disp(Vv0,"Visual Critical voltage(rms) in kV : ");
Vph=110/sqrt(3);//in kV
Pc_dash=d/del*(f+25)*sqrt(r/d)*(Vph-0.8*Vd0)^2*10^-5;//kW/km/phase
T_Corona_loss=l*3*Pc_dash;//kW
disp(T_Corona_loss,"Total corona loss under foul weather condition using Peek formula in kW : ");
VphBYVd0=Vph/Vd0/0.8;
K=0.46;//constant
Corona_loss=21*10^-5*f*Vph^2*K/(log10(d/r))^2;//kW/km/phase
T_corona_loss=Corona_loss*3*l;//kW
disp(T_corona_loss,"Total corona loss under foul weather condition using Peterson formula in kW : ");
