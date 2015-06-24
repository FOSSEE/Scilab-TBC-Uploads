clear;
clc;
close;
disp("Example 4.17")
M0=0.7 //Mach no.
T0=228 // in K
p0=16 //kPa
eprop=0.85 // prop efficiency
m=10 //Kg/s
pd=0.98 //diffuser pressure ratio
pc=30 //compressor pressurer ratio
ec=0.92 //thermal efficiency of compressor
Tt4=1600 //in K
Qr=42000000 //in kJ/kg
eb=0.99 //thermal efficiency of burner
pb=0.96 //burner pressure ratio
etHPT=0.82
emHPT=0.99
alfa=0.85 
emLPT=0.99
eLPT=0.88
egb=0.995
en=0.95
gmc=1.4 //gamma of compressor
Cpc=1004 // in J/kg.K
gmt=1.33 //gamma of turbine
Cpt=1152 // in J/kg.K
Tt0=T0*(1+((gmc-1)*(M0)^2)/2)
pt0=p0*(1+((gmc-1)*(M0)^2)/2)^(gmc/(gmc-1))
a0=((gmc-1)*Cpc*T0)^(1/2);
V0=a0*M0
pt2=pt0*pd
Tt2=Tt0 //Adiabatic
pt3=pt2*pc
tc=pc^((gmc-1)/(ec*gmc))
Tt3=Tt2*tc
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb-Cpt*Tt4)
pt4=pt3*pb
ht45=Cpt*Tt4-(Cpc*Tt3-Cpc*Tt2)/((1+f)*emHPT)
Tt45=ht45/Cpt
pt45=pt4*(Tt45/Tt4)^(gmt/((gmt-1)*etHPT))
m9=(1+f)*m
sp=(1+f)*m*eLPT*alfa*ht45*(1-(p0/pt45)^((gmt-1)/gmt))/10^6
Tt5=(ht45-sp*10^6/((1+f)*m))/Cpt
tt=Tt5/Tt45
et=log(tt)/(log(1-((1-tt)/eLPT)))
pt=tt^(gmt/(et*(gmt-1)))
pt5=pt45*pt
p9=p0 //assumption
pi=p9/pt5
ti=pi^((gmt-1)/gmt)
T9i=Tt5*ti
T9=Tt5-en*(Tt5-T9i)
V9=(2*Cpt*(Tt5-T9))^(1/2)
Fprop=eprop*egb*emLPT*sp*10^3/V0
a9=((gmt-1)*Cpt*T9)^(1/2)
M9=V9/a9
pt9=p9*(1+((gmt-1)*M9^2)/2)^(gmt/(gmt-1))
pn=pt9/pt5
Fncore=m*((1+f)*V9-V0)/1000
spp=egb*emLPT*sp
Ft=Fprop+Fncore
mp=((m9*V9^2)/2-m*(V0^2)/2)/10^3
mf=m9-m
PSFC=mf*10^6/((spp*10^3)+mp)
TSFC=mf*10^3/(Ft)
eth=(spp*10^3+mp)*10^3/(mf*Qr)
ep=(Ft*V0)/(spp*10^3+mp)
eo=eth*ep
disp("a(1)Total pressures throughout the engine in kPa:")
disp(pt0,"Total pressure of flight:")
disp(pt2,"Total pressure at engine face:")
//disp(p19,"Static pressure at nozzle exit:")
disp(pt3,"Total pressure at compressor exit:")
disp(pt4,"Total pressure at burner exit:")
disp(pt45,"Total pressure across HPT :")
disp(pt5,"Total pressure at turbine exit:")
disp(pt9,"Total pressure at nozzle exit:")

disp("a(2)Total temperatures across the engine in K:")
disp(Tt0,"Total temperature of flight:")
disp(Tt2,"Total temperature at engine face:") //Tt0=Tt2, since adiabatic!
disp(Tt3,"Total temperature at compressor exit:")
disp(Tt4,"Total temperature at burner exit:")
disp(Tt45,"Total temperature across HPT :")
disp(Tt5,"Total temperature at turbine exit:")
disp(f,"a(3)fuel-to-air ratio in burner :")
disp(Fncore,"(b)Engine core thrust in kN :")
disp(Fprop,"(c)Propeller thrust in kN :")
disp(PSFC,"(d)Power-specific fuel consumption in mg/s/kW :")
disp(TSFC,"(e)TSFC in mg/s/N :")
disp(ep,"f(1)Propulsive efficiency :")
disp(eth,"f(2)Thermal efficiency :")
disp(eo,"(g)Overall efficiency :")
