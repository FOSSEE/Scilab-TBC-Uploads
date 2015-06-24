clear;
clc;
close;
disp("Example 4.3")
Tt3=800 //in K
pt3=2*10^6 // in Pa
m=50 //air mass flow rate in kg/s
gm=1.4 //gamma
cp3=1004 //specific heat at inlet in j/kg.K.
Qr=42000 //heating valuein kJ/kg
mf=1 //fuel flow rate in kg/s
be=0.995 //burner efficiency
p=0.96 //p=pt4/pt3
cp4=1156 //specific heat at exit in J/kg.K
f=mf/m // fuel-to-air ratio
Tt4=(((cp3/cp4)*Tt3)+((f*Qr*be*1000.)/cp4))/(1+f)
pt4=p*pt3/10^6
disp(f,"(a)Fuel-to-air ratio :")
disp(Tt4,"b(1) combustor exit total temperature in K:")
disp(pt4,"b(2)combustor exit total pressure in MPa")