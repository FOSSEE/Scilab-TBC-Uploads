clc;
clear;
T=20;//degree C
d=998;//kg/(m^3)
kvis=1.004*(10^-6);//(m^2)/s; where kvis=kinematic viscosity
D=0.1;//m
Q=0.04;//(m^3)/sec
pgrad=2.59;//kPa/m; where pgrad is pressure gradient
r=0.025;//m
stress=D*(pgrad*1000)/(4*1);//N/(m^2)
uf=(stress/d)^0.5;//m/sec; where uf is frictional velocity
ts=5*kvis*1000/(uf);//mm; where ts is the thickness of the viscous sublayer
disp("mm",ts,"The thickness of the viscous sublayer=")
V=Q/(%pi*(D^2)/4);//m/s
Re=V*D/kvis;
disp("hence the flow is turbulent.",Re,"The reynolds number=")
n=8.4;//from turbulent flow velocity profile diagram

//Q=(%pi)*(R^2)*V
R=1;//assumption
//let Q/Vc=x
x=integrate('((1-(r/R))^(1/n))*(2*%pi*r)','r',0,R);
q=%pi*(R^2)*V;
Vc=q/x;//m/s
disp("m/s",Vc,"The approximate centerline velocity=")
stress1=(2*stress*r)/D;//N/(m^2)
//d(uavg)/dr=urate=-(Vc/(n*R))*((1-(r/R))^((1-n)/n)); where uavg=average velocity
urate=-(Vc/(n*(D/2)))*((1-(r/(D/2)))^((1-n)/n));//s^(-1)
stresslam=-(kvis*d*urate);//N/(m^2)
stressratio=(stress1-stresslam)/stresslam;
disp(stressratio,"The ratio of teh turbulent to laminar stress at a point midway between the centreline and the pipe wall =")