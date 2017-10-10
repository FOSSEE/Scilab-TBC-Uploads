// Implementation of example 3.5
// Basic and Applied Thermodynamics by P.K.Nag
// page 57

clc
clear

rt=5000 // (rate of heat supply in kg/h)
t1=15 // (in degree celsius)
t2=1650 // (in degree celsius)
mp=1535 // (melting point in degree celsius)
lt=270 // (latent heat in kJ/kg*K)
shs=0.502 // (specific heat in solid state in kJ/kg*K)
shl=29.93 // (specific heat in liquid state in kJ/kg*K)
e=0.7 // (efficiency)
dn=6900 // (density in kg/m^3)
wt=56 // (atomic wt of iron)

ht=shs*(mp-t1)+lt+shl*(t2-mp)/wt;
// ht is heat required to melt 1 kg of iron
rm=(rt*ht);
rate=(rm/e)/3600;
disp("rating of furnace =")
disp(rate)
disp("kW")
// since bath volume is 3 times the hourly melting rate
V=(3*rt)/dn;
// let d & l be the diameter & length and l=2d
d=(V*2/%pi)^(1/3);
l=(2*d);
disp("diameter =")
disp(d)
disp("m")
disp("length")
disp(l)
disp("m")
