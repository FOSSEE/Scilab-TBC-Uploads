//Example 1.9 // power absorbed and power factor
clc;
clear;
close;
format('v',8)
vs=10;//secondary voltage in volts
p=500;//power drawn in kW
pf=0.5;//
is=(p*10^3)/pf;//secondary current in amperes
zs=vs/is;//impedence of secondary circuit in ohms
rs=zs*pf;//resistance of secondary circuit in ohms
res=zs*(sqrt(1-pf^2));//rectancetance of secondary circuit in ohms
rs1=2*rs;// resistacne when hearth is full in Ω
res1=res;// reactance when hearth is full in Ω
zs1=(sqrt(rs1^2+res1^2));//impedance of secondary circuit in Ω
pf1=rs1/zs1;//power factor
is1=vs/zs1;//secondary current in amperes
pd=is1^2*rs1*10^-4;//power drawn in kW
disp(pf1,"power factor is")
disp(pd,"power drawn in kW")
