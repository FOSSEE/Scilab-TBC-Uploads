clear;
clc;
close;
disp("Example 10.2")
M0=0
p0=0.1 //in MPa
T0=15+273
pd=0.98
pc=25
ec=0.9
Qr=42800000 //in J/kg
pb=0.98
eb=0.99
Tt4=1500+273
et=0.85
em=0.995
mc2=73
Nc2=6000 //in rpm
Mz2=0.6
pn=0.97
p=1 //p=p9/p0
//in this engine is operating in the following off-design conditions
Mo0=0.8
po0=33
To0=-15+273
Tt4o=1375+273
pdo=0.995
po=1
gm=1.4

td=T0/Tt4
tcd=pc^((gm-1)/(ec*gm))
tod=(To0*(1+(gm-1)*Mo0^2/2)/Tt4o)
tcod=1+(td/tod)*(tcd-1)
pcod=(tcod)^((ec*gm)/(gm-1))
disp(pcod,"(a)pressure ratio in combustor,O-D :")
mratio=(pcod/pc)*(tod/td)^(1/2)
mc2od=mc2*mratio
disp(mc2od,"(b)mc2,O-D (in kg/s) :")
Nc2r=(td/tod)^(1/2)
Nc2od=Nc2r*Nc2
disp(Nc2od,"(c)Nc2,O-D (in rpm):")
pref=101.33 //in kPa
pto0=po0*(1+(gm-1)/2*Mo0^2)^(gm/(gm-1))
pto2=pdo*pto0
Tref=288.2
Tto2=To0*(1+(gm-1)/2*Mo0^2)
the2=Tto2/Tref
del2=pto2/pref
m2=mc2od*del2/(the2)^(1/2)
M2od=poly(0,"M2od")
pol=0.6*((1+(gm-1)/2*M2od^2)/(1+(gm-1)/2*0.6^2))^3-(73/64.5)*M2od
rr=roots(pol)
//disp(rr)
i=1
while i < 7
if imag (rr(i))==0 then
    if real(rr(i))<1 then
        disp(rr(i),"(d)Mz2,O-D")
    end
end
i=i+1
end













