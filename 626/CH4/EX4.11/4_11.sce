clear;
clc;
close;
disp("Example 4.11")
M0=2.0 //Mach no.
p0=10//units in kPa
T0=228 //in K
gmc=1.4 //gamma compressor
Cpc=1004 //J/kg.K specific heat of compressor
pd=0.88 //compression ratio of diffuser
pc=12 // compression ratio of compressor
ec=0.9 //adiabatic efficiency of compressor
tl=8    //enthalpy ratio
Qr=42000 //kJ/kg
eb=0.98 //adiabatic efficiency of burner
pb=0.95 //compression ratio of burner
gmt=1.33 //gamma turbne
Cpt=1156 //J/kg.K specific heat turbine
et=0.82 //adiabatic efficiency of turbine
em=0.995 
tlAB=11 //enthalpy ratio of afterburner (AB==AfterBurner)
QrAB=42000 //kJ/kg
eAB=0.98
pAB=0.93
gmAB=1.3 // gama AB
CpAB=1243 //J/kg.K
pn=0.93
a0=((gmc-1)*Cpc*T0)^(1/2)
V0=M0*a0
pt0=p0*(1+(((gmc-1)*(M0)^2)/2))^(gmc/(gmc-1)) //total flight pressure
Tt0=T0*(1+(((gmc-1)*(M0)^2)/2)) //total flight temp
Tt2=Tt0 //Adiabatic inlets
pt2=pt0*pd // in kPa
pt3=pt2*pc //compressor exit total pressure
k2=((gmc-1)/(gmc*ec))
//disp(k2)
tc=pc^k2 //relation between temp and pressure ratios
//disp(tc)
Tt3=Tt2*tc //total temp at compressor exit
Tt4=Cpc*T0*tl/Cpt //combustor exit total temp.
pt4=pt3*pb //combustor exit pressure
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb*1000-Cpt*Tt4) //fuel-to-air ratio in burner
//disp(f)
Tt5=Tt4-(Cpc*((Tt3-Tt2)/(Cpt*em*(1+f)))) // turbine exit total temp
tt=Tt5/Tt4 //temp ratio in turbine
pt=tt^(gmt/(et*(gmt-1)))
pt5=pt4*pt //in kPa
pt7=pt5*pAB
Tt7=Cpc*T0*tlAB/CpAB //afterburner exit
fAB=(1+f)*((CpAB*Tt7)-(Cpt*Tt5))/((QrAB*eAB*1000)-(CpAB*Tt7))
//disp(fAB)
pt9=pt7*pn //in kPA
Tt9=Tt7 //adiabatic flow in nozzle
p9=p0
M9=((2/(gmAB-1))*((pt9/p9)^(((gmAB-1)/gmAB))-1))^(1/2) //nozzle exit
//disp(M9)
T9=Tt9/(1+((gmAB-1)*(M9)^2)/2)
a9=((gmAB-1)*CpAB*T9)^(1/2)
//disp(a9)
V9=M9*a9
//Performance parameters:
st=(1+f+fAB)*V9-V0 //st=Fn/m0; specific thrust when nozzle is perfectly expanded
ndst=((1+f+fAB)*V9/a0)-M0 //ndst=Fn/m0*ao ; nondimensional specific thrust
TSFC=((f+fAB)/st)*10^6 //units mg/s/N
eth=(((1+f+fAB)*((V9)^2)/2)-((V0)^2)/2)/(f*Qr*1000+fAB*QrAB*1000) //cycle thermal efficiency
ep=st*V0/(((1+f+fAB)*(((V9)^2)/2))-((V0)^2)/2) //propulsive efficiency exact
epa=2/(1+V9/V0) //approx
disp("a(1)Total temperatures across the engine in K:")
disp(Tt0,"Flight total temperaure:")

disp(Tt2,"Toal temperature at compressor inlet:")
disp(Tt3,"Total temperature at compressor exit: ")
disp(Tt4,"Total temperature at burner exit:")
disp(Tt5,"Total temperature at turbine exit:")
disp(Tt7,"Total temperature at afterburner exit:")
disp(T9,"Total temperature at nozzle exit:")
disp(T9,"Nozzle exit static temperature:")
disp("a(2)Total pressures across the engine in kPa:")
disp(pt0,"Flight total pressure:")

disp(pt2,"Toal pressure at compressor inlet:")
disp(pt3,"Total pressure at compressor exit: ")
disp(pt4,"Total pressure at burner exit:")
disp(pt5,"Total pressure at turbine exit:")
disp(pt7,"Total pressure at afterburner exit:")
disp(pt9,"Total pressure at nozzle exit:")
disp(p9,"Nozzle exit static pressure:")
disp(ndst,"(b)Nondimensional specific thrust:")
disp(TSFC,"(c)Thrust specific fuel consumption TSFC (in mg/s/N):")
disp(eth,"d(1)Themal efficiency:")
disp(ep,"d(2)Exact propulsive efficiency:")