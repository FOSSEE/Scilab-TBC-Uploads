// Example 4.7;iron losses
clc;
close;
clear;
//given
format('v',6)
kva=200;//kVA
pf=0.8;//power factor
rflo=kva*pf;//kW
ef=0.96;//efficiency
ip=rflo/ef;//kW
tl=ip-rflo;//kW
e2=800;//volts
e1=6600;//volts
n21=((e2/sqrt(3))/e1);//turn ratiom
r1=4;//ohms
r2=0.05;//ohms
roe=(r1)*n21^2+r2;//ohms
fli=((kva*10^3)/(sqrt(3)*e2));//amperes
fcl=3*fli^2*roe;//kW
il=tl-(fcl)*10^-3;//kW
disp(il,"iron losses is,(kW)=")
