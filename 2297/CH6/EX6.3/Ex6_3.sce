//Example  6.3// spped ,torque and efficiency
clc;
clear;
close;
format('v',6)
v=200;//voltage in volts
r=100;//resistance in ohms
ish=v/r;//shunt current in amperes
i=4;//current in amperes
nla=i-ish;//no load armature current in amperes
w=8;//powerin kW
ifl=(w*10^3)/v;//full load current in amperes
fla=ifl-ish;//full load armature current in amperes
r1=0.6;//internal resistance in ohms
ebo=(v-(ish*r1));//voltage in volts
eb=(v-(fla*r1));//voltage in volts
no=700;//number of rpm
n=no*(eb/ebo);//number of rpm
ta=((eb*fla*60)/(2*n));//armature torque in N-m
nlpi=v*i;//no load power input in watts
cl=(ish^2*r1);//copper losses in watts
cl=nlpi-cl;//total copper lossses in Watts
flacl=(fla^2*r1);//full load armmature copper losses in Watts
tfll=flacl+cl;//total full load losses in Watts
flo=(w*10^3)-tfll;//full load output in Watts
ef=((flo)/(w*10^3))*100;//efficiency
disp(n,"speed  is,(rpm)=")
disp(ta,"armature torque is, (N-m)=")
disp(ef,"full load motor efficiency is ,(%)=")
//armature torque is calculated wrong in the textbook
