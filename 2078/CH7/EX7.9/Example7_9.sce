//Example 7.9
clc;
clear;
close;
//given data :
f=50;//Hz
l=175;//km
r=1/2;//cm
d=3*100;//cm
g0=21.1;//kV/cm(rms)
m0=0.85;//irregularity factor
mv=0.72;//roughness factor
mv_dash=0.82;//roughness factor
b=74;//cm
t=26;//degree C
Vph=110/sqrt(3);//kV
del=3.92*b/(273+t);//air density factor
Vd0=g0*del*m0*r*log(d/r);//kV(rms)
Vvo=g0*del*mv*r*(1+0.3/sqrt(del*r))*log(d/r);//kV rms
Vvo_dash=Vvo*mv_dash/mv;//kV rms
Pc=244/del*(f+25)*sqrt(r/d)*(Vph-Vd0)^2*10^-5;//kW/Km/phase
T_CoronaLoss=Pc*l*3;//kW
disp("Power loss due to corona for fair weather condition : ");
disp(T_CoronaLoss,"Total corona loss using Peek formula in kW : ");
K=0.0713;//constant for Vph/Vdo=1.142
Pc=21*10^-5*f*Vph^2/(log10(d/r))^2*K;//kW/Km/phase
T_CoronaLoss=Pc*l*3;//kW
disp(T_CoronaLoss,"According Peterson formula, Total corona loss for 175 km 3-phase line(kW): ");
disp("Power loss due to corona for stormy weather condition : ");
Vd0=0.8*Vd0;//kV
Pc_dash=l*3*244/del*(f+25)*sqrt(r/d)*(Vph-Vd0)^2*10^-5;//kW/Km/phase
disp(Pc_dash,"Total corona loss using Peek formula in kW : ");
K=0.395;//constant for Vph/Vdo=1.42
Pc=21*10^-5*f*Vph^2/(log10(d/r))^2*K;//kW/Km/phase
T_CoronaLoss=Pc*l*3;//kW
disp(T_CoronaLoss,"According Peterson formula, Total corona loss for 175 km 3-phase line(kW): ");
//Answer is wrong in the book for corona loss fair weather condition using Peek formula.
