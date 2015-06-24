clear;
clc;
close;
disp("Example4.13")
M0=0.88 //Mach no.
p0=15 // pressure in kPa
T0=233 //temperatue in K
gmc=1.4 //gamma compressor
Cpc=1004 //specific heat of compressor in J/kg.K
pd=0.995 // pressure compression ratio of diffuser
pf=1.6 //pressure compression ratio of fan
ef=0.9 //fan efficiency
alfa=8
pfn=0.95 //compression ratio of convergent fan nozzle
pc=40 //compression ratio of compressor
ec=0.9 //compressor efficiency
tl=8 //temp. ratio
Cpt=1152 //in J/kg.K of turbine
gmt=1.33 //gamma turbine
Qr=42000000 //in J/kg
pb=0.95 //burner compression ratio
eb=0.992 //burner efficiency
em=0.95
et=0.85
pn=0.98 //primary nozzle
a0=((gmc-1)*Cpc*T0)^(1/2);
V0=M0*a0;
pt0=p0*(1+((gmc-1)*(M0)^2)/2)^(gmc/(gmc-1))
Tt0=T0*(1+((gmc-1)*(M0)^2)/2)
Tt2=Tt0
pt2=pt0*pd
//fan stream:
pt13=pt2*pf
tf=pf^((gmc-1)/(ef*gmc))
Tt13=Tt2*tf
pt19=pt13*pfn
p19=pt19/(1+(gmc-1)/2)^(gmc/(gmc-1))
M19=1
T19=Tt13/1.2
a19=((gmc-1)*Cpc*T19)^(1/2)
V19=a19
//V19eff=V19+((gmc*p19)/r19)*((1-p0/p19)/(gmc*V19)) i.e V19+a19^2
V19eff=V19+(a19^2)*((1-p0/p19)/(gmc*V19))
//Core stream
pt3=pt2*pc
tc=pc^((gmc-1)/(ec*gmc))
//disp(tc)
Tt3=Tt2*tc
pt4=pt3*pb
Tt4=Cpc*T0*tl/Cpt
//disp(Tt4)
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb-Cpt*Tt4)
//disp(f)
Tt5=Tt4-((Cpc*(Tt3-Tt2)+alfa*Cpc*(Tt13-Tt2)))/((1+f)*Cpt*em)
//disp(Tt5)
tt=Tt5/Tt4
pt=tt^(gmt/(et*(gmt-1)))
pt5=pt4*pt
pt9=pt5*pn
p9=pt9/((gmt+1)/2)^(gmt/(gmt-1))
M9=1
T9=Tt5/((gmt+1)/2)
a9=((gmt-1)*Cpt*T9)^(1/2)
V9=a9
V9eff=V9+(((a9)^2)*(1-(p0/p9)))/(gmt*V9)
ndsft=alfa*(V19eff-V0)/((1+alfa)*a0)
ndsct=((1+f)*V9eff-V0)/((1+alfa)*a0)
ndst=ndsft+ndsct
rfct=ndsft/ndsct
fc=ndsft*100/(ndsft+ndsct)
cc=ndsct*100/(ndsft+ndsct)
TSFC=f/((1+alfa)*a0*(ndsft+ndsct))*10^6
eth=(alfa*V19eff^2+(1+f)*V9eff^2-(1+alfa)*V0^2)/(2*f*Qr)
ep=(2*(ndsft+ndsct)*(1+alfa)*a0*V0)/(alfa*V19eff^2+(1+f)*V9eff^2-(1+alfa)*V0^2)
eo=eth*ep
//Pressures
disp("a(1)Total pressures throughout the engine in kPa:")
disp(pt0,"Total pressure of flight:")
disp(pt2,"Total pressure at engine face:")
disp(pt13,"Total pressure at fan exit:")

disp(p19,"Static pressure at nozzle exit:")
disp(pt3,"Total pressure at compressor exit:")
disp(pt4,"Total pressure at burner exit:")
disp(pt5,"Total pressure at turbine exit:")
disp(pt9,"Total pressure at nozzle exit:")

//Temperatures
disp("a(2)Total temperatures across the engine in K:")
disp(Tt0,"Total temperature of flight:")
disp(Tt2,"Total temperature at engine face:") //Tt0=Tt2, since adiabatic!
disp(Tt13,"Total temperature at fan exit:")
disp(T19,"Static  temperature at fan nozzle exit:")
disp(Tt3,"Total temperature at compressor exit:")
disp(Tt4,"Total temperature at burner exit:")
disp(Tt5,"Total temperature at turbine exit:")
disp(T9,"Static temperature at nozzle exit:")
disp(pt19,"(b{1})Total pressure at fan nozzle exit:")
disp(p9,"(b{2})Static pressure at nozzle exit:")


//Remaining results
disp(V19,"(c{1}Actual fan nozzle exit velocity in m/s:)")
disp(V19eff,"(c{2}Effective fan nozzle exit velocity in m/s:)")
disp(V9,"(c{3})Actual core nozzle exit velocity in m/s:")
disp(V9eff,"(c{4})Effective nozzle exit velocity in m/s:")
disp(rfct,"(d)Ratio of fan-tocore thrust:")
disp(ndst,"(e)Nondimensional specific thrust:")
disp(TSFC,"(f)TSFC in mg/s/N:")
disp("(g)Engine efficiencies:")
disp(eth,"Thermal efficiency:")
disp(ep,"Propulsion effciency:")
disp(eo,"Overall efficiency:")
