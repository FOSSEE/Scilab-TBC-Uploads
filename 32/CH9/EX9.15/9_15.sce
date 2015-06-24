//pathname=get_absolute_file_path('9.15.sce')
//filename=pathname+filesep()+'9.15-data.sci'
//exec(filename)
//Ambient temperature(in K):
T1=17+273
//Temperature at state 3(in K):
T3=1400
T5=420
//Ambient pressure(in bar):
p1=1
//As pressure ratio is 10, pressure at state 2(in bar):
p2=10
p3=10
p4=1
//Pressure in HSRG(in kPa):
ph=6000
//Condensor pressure(in kPa):
pc=15
//Combined cycle output(in MW):
O=37.3
//Adiabatic index of compression:
r=1.4
//Value of Cp(in kJ/kg.K):
Cp=1.0032
//From steam tables:
ha=3177.2 //kJ/kg
sa=6.5408 //kJ/kg.K 
sb=sa
x=0.7976
hb=2118.72 //kJ/kg
hc=225.94  //kJ/kg
vc=0.001014 //m^3/kg
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Temperature at state 4(in K):
T4=T3*(p4/p3)^((r-1)/r)
//Compressor work per kg(in kJ/kg):
Wc=Cp*(T2-T1)
//Turbine work per kg(in kJ/kg):
Wt=Cp*(T3-T4)
//Heat added in combustion chamber(in kJ/kg):
qa=Cp*(T3-T2)
//Net gas turbine output(in kJ/kg air):
WnetGT=Wt-Wc
//Heat recovered in HSRG for steam generation(in kJ/kg):
qHSRG=Cp*(T4-T5)
//Enthalpy at exit of feed pump(in kJ/kg):
hd=vc*(ph-pc)*10^2
//Heat added per kg of steam(in kJ/kg):
had=ha-hd
//Mass of steam generated per kg of air:
m=qHSRG/had
//Net steam turbine cycle output(in kJ/kg):
WnetST=ha-hb-(hd-hc)
//Steam cycle output per kg(in kJ/kg air):
sco=WnetST*m
//Total combined output(in kJ/kg air):
tco=WnetGT+sco
//Combined cycle efficiency:
ncc=tco/qa
//Gas turbine efficiency:
ngt=WnetGT/qa
printf("\nRESULT")
printf("\nOverall efficiency = %f percent",ncc*100)
printf("\nSteam per kg of air =%f kg steam/kg air",m)