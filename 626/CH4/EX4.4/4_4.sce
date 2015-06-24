clear;
clc;
close;
disp("Example 4.4")
m=50 //air mass flow in kg/s
mf=1 // fuel mass flow in kg/s
tae=0.88 //turbine adiabatic efficiency
pe=45*10^6 //shaft power in Watt
cp4=1156 // in J/kg.K
Tt4=1390.0197 // in K
pt4=1.92 //units in MPa
cp5=cp4//specific heat
mt=m+mf//total mass
gm=1.33 //gamma
ht5=cp4*Tt4/1000-(pe/(mt*1000)) 
//disp(ht5)
Tt5=ht5/(cp5/1000)
y=Tt5/Tt4 //turbine expansion parameter
tpe=log(y)/log(1-(1-y)/tae)
pr=y^(gm/((gm-1)*tpe))
pt5=pr*pt4*1000 // turbine total exit pressure
pt=mt*cp5*(Tt4-Tt5)/10^6
disp(Tt5,"(a)Turbine exit total temperature in K :")
disp(tpe,"(b)Turbine polytropic efficiency:")
disp(pt5,"(c)Turbine exit total pressure in kPa :")
disp(pt,"(d)Turbine shaft power based on turbine expansion delta(Tt) in MW:")