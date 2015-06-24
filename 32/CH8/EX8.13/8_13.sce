//pathname=get_absolute_file_path('8.13.sce')
//filename=pathname+filesep()+'8.13-data.sci'
//exec(filename)
//Enthalpy of dry saturated vapour at 8.45 bar
hd=349 //kJ/kg
//Enthalpy after isentropic expansion to 0.07 bar
hi=234.5 //kJ/kg
//Enthalpy of saturated liquid at 0.07 bar 
hs= 35 //kJ/kg
//Capability:
n1=0.85
//Specific heat of water:
Cpw=4.18
//From steam tables:
h1=2767.13 //kJ/kg
h2=3330.3 //kJ/kg
s2=6.9363 //kJ/kg.K
s3=s2
s4=s2
s5=s2
h3=2899.23 //kJ/kg
x4=0.93
h4=2517.4 //kJ/kg
x5=0.828
h5=2160.958 //kJ/kg
h6=168.79 //kJ/kg
v6=0.001008 //m^3/kg
h7=168.88 //kJ/kg
h9=417.46 //kJ/kg
h13=721.11 //kJ/kg
v13=0.001252 //m^3/kg
T1=150 //C
h10=418.19 //kJ/kg
m1=0.102
m2=0.073
//For mercury cycle:
//Isentropic heat drop:
qd=hd-hi
//Actual heat drop:
qda=n1*qd
//Heat rejected in condenser(in kJ/kg):
qre=hd-qda-hs
//Heat added in the boiler(in kJ/kg):
qa=hd-hs
//Heat added in the condenser of mercury cycle(in kJ/kg):
qam=h1-Cpw*T1
//Mercury per steam required per kg of steam:
m=qam/qre
//Pump work(in kJ/kg):
Wp=v13*(40-8)*10^2
//Total heat supplied(in kJ/kg steam):
qt=m*qa+h2-h1
//Work done in mercury cycle(in kJ/kg):
Wm=m*qda
//Work done in steam cycle(in kJ/hr):
Ws=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-(1-m1-m2)*(h7-h6)-m2*(h10-h9)-m1*Wp
//Total work done(in kJ/kg):
Wt=Wm+Ws
//Thermal efficiency:
n=Wt/qt*100
printf("\n RESULT \n")
printf("\nThermal efficiency = %f percent",n)