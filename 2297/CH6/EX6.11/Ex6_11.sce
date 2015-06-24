//Example 6.11// current per phase and power factor
clc;
clear;
close;
format('v',6)
v1=100;//emf in volts
vi=v1/sqrt(3);//induced emf in volts
r1=1;//rotor resistance ohms per phase
r2=4;//rotor reactance ohms per phase
r=sqrt(r1^2+r2^2);//rotor impedence per phase
rcp=(vi/r);//rotor current per phase
pf=(1/r);//power factor
disp("part (a)")
disp(rcp,"rotor current per phase is,(A)=")
disp(pf,"power factor is,=")
r3=3;//ohms
r4=r1+r3;//rotor resistance ohms per phase
r2=4;//rotor reactance ohms per phase
r=sqrt(r4^2+r2^2);//rotor impedence per phase
rcp=(vi/r);//rotor current per phase
pf=(r4/r);//power factor
disp("part (b)")
disp(rcp,"rotor current per phase is,(A)=")
disp(pf,"power factor is,=")

