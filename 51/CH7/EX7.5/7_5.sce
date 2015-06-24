clc;
clear;
D=0.1;//m
H=0.3;//m
v=50;//km/hr
Dm=20;//mm
T=20;//degree C
fm=49.9;//Hz ; frequency for the model
//f=func(D,H,V,d,vis)
//f=T^(-1); D=l; H=L; V=L*(T^(-1)); d=M*(L^(-3)); vis=M*(L^(-1))*(T^(-1))
//by applying pi theorem,
//(f*D/V)=funct((D/H),(d*V*D/vis))
//hence; Dm/Hm = D/H, dm*Vm*Dm/vism = d*V*D/vis, and (f*D/V)=(fm*Dm/Vm)
Hm=(Dm*H*1000/(D*1000));//mm
V=v*1000/3600;//m/s
vism=1/1000;//kg/(m*s)
vis=1.79/100000;//kg/(m*s)
d=1.23;//kg/(m^3)
dm=998;//kg/(m^3)
Vm=(vism*d*D*V*1000)/(vis*dm*Dm);//m/s
f=(V/Vm)*(Dm/(D*1000))*fm;//Hz
disp("mm",Hm,"The model dimension =")
disp("m/s",Vm,"The velocity at which the test should be performed=")
disp("Hz",f,"The predicted prototype vortex shredding frequency =")