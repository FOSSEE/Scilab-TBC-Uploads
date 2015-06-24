//Example 6.5// primary winding current ,actual transformation ratio and no. of turns
clc;
clear;
Ns=300;//no. of secondary turns
Xe=0.55;//in ohms
Xs=0.25;//in ohms
f=50;//frequency in hertz
Np=1;//no. of primary turns
Is=5;//SECONDARY WINDING CURRENT IN AMPERE
Re=1.0;//external burden in ohms
Rs=0.3;//in ohms
mmf=90;//magneromotive force in AT
mmfc=45;//mmf for core loss in AT
ts=Rs+Re;//total secondary circuit resistance
tr=Xe+Xs;//total secondary circuit reactance
d= atand(tr/ts);//secondady phase angle in degree
csd= cosd(d);
sd=sind(d);
Kt=300;//
Iw= mmfc/Np;//loss component in ampere
Im= mmf/Np;//magnetising component of current in ampere
Kact= Kt+((Im*sd)+(Iw*csd))/Is;//actual ratio
Ip=Kact*Is;//primary current in amperes
Knom=300;//NOMINAL TRANSFORMATION RATIO
Ktd= Knom-((Im*sd)+(Iw*csd))/Is;//for zero ratio error
Nsd=Ktd*Np
Rtr=round(Knom-Nsd);//reduction in secondary winding turns
disp(Ip,"primary current in ampere")
disp(Kact,"actual transformation ratio")
disp(Rtr,"reduction in secondary winding turns")
