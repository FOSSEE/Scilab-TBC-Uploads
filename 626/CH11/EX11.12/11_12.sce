clear;
clc;
close;
disp("Example 11.12")
Tg=2750 //in K
Ttg=Tg
Tc=300 // coolant bulk temp. in K
tw=0.002 //Wall thickness in m
kw=43 //thermal conductivity of the wall in W/m.C
hg=657 //Gas side film coefficient in W/m^2K
hc=26000 //Coolant side film coefficient in W/m^2K
eg=0.05 //emissivity of the gas 
sigma=5.67*10^(-8)//in W/m^2K
Taw=Ttg

rhf=eg*sigma*Tg^4/1000
disp(rhf,"(a)The radiation heat flux in kW/m^2 :")
qw=(Ttg-Tc+(rhf*1000/hg))/((1/hg)+(tw/kw)+(1/hc))/1000
disp(qw,"(b)The total heat flux in kW/m^2:")
qc=qw-rhf
disp(qc,"(c)The convection heat in kW/m^2:")
Twg=Taw-qc*1000/hg
disp(Twg,"(d)Wall temp. on the gas side in K:")
Twc=Tc+(qw*1000/hc)
disp(Twc,"(e)Wall temp. on the coolant side in K:")

