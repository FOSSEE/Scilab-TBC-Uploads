clear;
clc;
close;
disp("Example 10.3")
M0=0
po=101.33 //in kPa
T0=288.2
gmc=1.4
Cpc=1004
pd=0.95
pc=20
ec=0.9
mc2=33
Nc2=7120
Mz2=0.6
Qr=428000000
pb=0.98
eb=0.97
Tt4=1850
gmt=1.33
Cpt=1156
et=0.8
em=0.995
QrAB=4280000
pAB=0.95
eAB=0.98
Tt7=2450
pAB=1.3
CpcAB=1243
pn=0.93
p=1 //p=p9/p0
Mo0=2
po0=20
To0=223
gm0=1.4
Cpc0=1004
pdo=0.8 
ec0=0.9
Qr=42800000
pb0=0.98
ebo=0.97
Tt4o=1850
gmto=1.33
cpto=1156
eto=0.8
emo=0.995
QrABo=42800000
pABo=0.95
eab=0.98
Tt7o=2450
gmABo=1.3
Cpco=1243
pno=0.93
po=1
a0=276.4

Tt2=T0
tc=pc^((gmc-1)/(ec*gmc))
Tt3=tc*Tt2
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb-Cpt*Tt4)
tt=1-(1/((1+f)*em))*(Cpc*Tt2/(Cpt*Tt4))*(tc-1)
disp(tt,"Turbine expansion parameter at on and off design :")
//Off-design analysis:
Tt2o=To0*(1+(gmc-1)/2*(Mo0^2))
tcOD=1+(1.036)*0.995*(1156*1850/(1004*401.4))*(1-0.7915)
pcOD=tcOD^((gmc)*ec/((gmc-1)))
disp(pcOD,"New compressor pressure ratio :")
mc2D=pcOD/pc*((Tt4o/Tt2)/(Tt4o/Tt2o))^(1/2)
mc2OD=mc2*mc2D
disp(mc2OD,"Off-line mc2 rate in Kg/s :")
Nc2r=((Tt4o/Tt2o)/(Tt4/Tt2))^(1/2)
Nc2OD=Nc2r*Nc2
disp(Nc2OD,"Off-design Nc2,O-D in rpm:")
pref=101.33 //in kPa
pt0=po0*(1+(gmc-1)/2*Mo0^2)^((gmc)/(gmc-1))
pt2=pdo*pt0
del2=pt2/pref
Tref=288.2
the2=Tt2o/Tref
m2=mc2OD*del2/(the2)^(1/2)
disp(m2,"Off-design mass flow in kg/s")
Tt3=859.2
Tt4=1850
fOD=0.03305
tcr=(1+fOD)/(1+f)
pt5=413.7// kPa
pt7=393.04
fAB=0.0367
pt9=365.52
M9=2.524
T9=1253
V9=1725

ndst=(1+f+fAB)*V9/a0-M9
disp(ndst,"Nondimensional specific thrust :")
TSFC=55.94 //in mg/s/N
disp(TSFC,"Thrust specific fuel consumption(TSFC) in mg/s/N :")














































