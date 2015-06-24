clear;
clc;
close;
disp("Example 4.16")
M0=2 //Mach no.
p0=10 // in kPa
T0=223 //in K
//the engine inlet total pressure loss is characterized by 
pd=0.9
//The fan pressure ratio is
pf=1.9
//and polytropic efficiency of the fan is
ef=0.9
//The flow in the fan duct suffers 1% total pressure loss i.e.
pfd=0.99
//The compressor pressure ratio and polytropic efficiency are 
pc=6
ec=0.9 //respectively
//The combustor exit temperature is 
Tt4=1600 //in K
Qr=42000000 //fuel heating value in J/kg
pb=0.95 //total pressure ratio
eb=0.98 //burner efficiency
et=0.8 //turbine polytropic efficiency
em=0.95 //mechanical efficiency of turbine
M5=0.5 //Mach no at turbine exit
pmf=0.98 //total pressure loss due to friction in mixer
Tt7=2000 //afterburner total temp in K
QrAB=42000000 //in J/kg
pABon=0.92
eAB=0.98
pn=0.95 //total pressure ratio at nozzle
p=3.8 //p=p9/p0
gmc=1.4 //gamma compressor
Cpc=1004 //specofic heat compressor in J/kg.K
gmt=1.33 //gamma turbine
Cpt=1152 //turbine
gmAB=1.3 //afterburner
CpAB=1241 //afterburner
z0=[6:0.1:16]
x=[]
count=1
g2=[]
gc2=1
g3=[]
gc3=1 
g4=[]
gc4=1
g5=[]
gc5=1
g6=[]
gc6=1
g7=[]
gc7=1
for pc=6:0.1:16

pt0=p0*(1+((gmc-1)*(M0)^2)/2)^(gmc/(gmc-1))
Tt0=T0*(1+((gmc-1)*(M0)^2)/2)
pr=pt0/p0
tr=Tt0/T0
pt=pfd*pf/(pb*pc)
a0=((gmc-1)*Cpc*T0)^(1/2);
V0=a0*M0
Tt2=Tt0
pt2=pt0*pd
pt13=pt2*pf
tf=pf^((gmc-1)/(ec*gmc))
Tt13=Tt0*tf
Tt15=Tt13 //adiabatic
pt15=pt13*pfd
pt3=pt2*pc
tc=pc^((gmc-1)/(ec*gmc))
Tt3=Tt2*tc
pt4=pt3*pb
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb-Cpt*Tt4)
pt5=pt15 //assumption
pt=(pfd*pf)/(pb*pc)
tt=pt^(et*(gmt-1)/(gmt))
Tt5=Tt4*tt
tl=(Cpt*Tt4)/(Cpc*T0)
tr=(1+((gmc-1)*(M0^2)/2))
alfa=((em*(1+f)*tl*(1-tt))-(tr*(tc-1)))/(tr*(tf-1))
ht6M=Cpc*T0*((1+f)*tt*tl+alfa*tf*tr)/(1+alfa+f) // mixed-out total enthalpy in J/kg
Cp6M=(((1+f)/alfa)*Cpt+Cpc)/(((1+f)/alfa)+1)
gm6M=(((1+f)/alfa)*Cpt+Cpc)/(((1+f)/alfa)*(Cpt/gmt)+(Cpc/gmc))
M15=((2/(gmc-1))*((((1+((gmt-1)*(M5^2)/2))^(gmt/(gmt-1)))^((gmc-1)/gmc))-1))^(1/2)
T15=Tt15/(1+((gmc-1)*(M15)^2)/2)
p15=pt15/(1+((gmc-1)*(M15)^2)/2)^(gmc/(gmc-1))
T5=Tt5/(1+((gmt-1)*(M5)^2)/2)
p5=pt5/(1+((gmt-1)*(M5)^2)/2)^(gmt/(gmt-1))
a15=((gm6M-1)*Cp6M*T15)^(1/2)
a5=((gm6M-1)*Cp6M*T5)^(1/2)
A=((alfa/(1+f))*(gmt/gmc)*((T15/T5)^(1/2))*(M5/M15))
C1=((1+gmt*M5^2)+(A*(1+gmc*M15^2)))/(1+A)
Tt6M=ht6M/Cp6M
C2=((gmt/gm6M)*(M5/a5)+(gmc/gm6M)*(M15*A/a15))*(((gm6M-1)*Cp6M*(Tt6M))^(1/2))/(1+A)
C=(C1/C2)^2
M6M=((C-2*gm6M-((C-2*gm6M)^2-4*(gm6M^2-(C*(gm6M-1))/2))^(1/2))/(2*(gm6M)^2-C*(gm6M-1)))^(1/2)
p6M=p5*(C1/(1+gm6M*(M6M)^2))
pt6Mi=131.23
pmi=0.9907
pM=0.9709
pt6M=pt6Mi*pmf
Tt7=2000
pABon=0.92
pt7=118.32
fAB=(CpAB*Tt7-ht6M)/(QrAB*eAB-CpAB*Tt7)
ft=f+fAB
pt9=pt7*pn
p9=p0*p
M9=1.377
T9=1557.2
a9=761.4
V9=a9*M9
V9eff=V9+a9^2*(1-p0/p9)/(gmAB*V9)
ndst=((1+alfa+f+fAB)/(1+alfa))*(V9eff/a0)-M0
TSFC=((f+fAB)/((1+alfa)*a0))*10^6/(ndst)
eth=(((1+alfa+f+fAB)*((V9eff)^2))-((1+alfa)*V0^2))/(2*(f*Qr+fAB*QrAB))
ep=(2*ndst*V0*a0*(1+alfa))/((1+alfa+f+fAB)*V9eff^2-(1+alfa)*V0^2)
e0=ep*eth
x(count)=TSFC;
count=count+1;
g2(gc2)=ndst
gc2=gc2+1
g3(gc3)=ep
gc3=gc3+1
g4(gc4)=eth
gc4=gc4+1
g5(gc5)=e0
gc5=gc5+1
g6(gc6)=alfa
gc6=gc6+1
g7(gc7)=ft
gc7=gc7+1
end
subplot(2,2,1)
plot2d(z0,x,2)
xgrid
title("TSFC in an AB-mixed flow turbofan engine")
xlabel("Compression pressure ratio")
ylabel("TSFC(mg/s/N)")
subplot(2,2,2)
plot2d(z0,g2,2)
xgrid
xlabel("Compressor pressure ratio")
ylabel("Non-dimensional specific thrust")
title("Specific thrust variation")
subplot(2,2,3)
plot2d(z0,g3,2)
plot2d(z0,g4,5)
plot2d(z0,g5,6)
xgrid
xlabel("Compressor pressure ratio")
ylabel("Efficiency")
title("Engine Efficiency")
legend(['Propulsive','Thermal','Overall'],2)
subplot(2,2,4)
plot2d(z0,g6,2)
xgrid
xlabel("Compressor pressure ratio")
ylabel("Bypass ratio")
title("Bypass ratio variation in an AB-mixed flow turbofan engine")
figure(1)
plot2d(z0,g7,2)
xgrid
xlabel("Compressure pressure ratio")
ylabel("f+fAB")
title("f+fAB")
