// Implementation of example 3.6
// Basic and Applied Thermodynamics by P.K.Nag
// page 57

clc
clear

shs=0.9 // (specific heat in solid state in kJ/kg*K)
lt=390 // (latent heat in kJ/kg)
wt=27 // (atomic wt of aluminium)
dn=2400 // (density in kg/m^3)
Tf=700 // (final temp in degree celsius)
mp2=660 // (melting point in degree celsius)
t1=15 // (in degree celsius)
shl=29.93 // (specific heat in liquid state in kJ/kg*K)
e=0.7 // (efficiency)
V=2.18 // (m^3) from example 3.5
rating=2.17d3 // (rating of furnace as evaluated in example 3.5)

ht=shs*(mp2-t1)+lt+shl*(Tf-mp2)/wt;
// ht is heat required per kg of aluminium
hs=(ht/e);
rate=(rating/hs)*3600; // 3600 is used to convert rate into kg/hour
rate=(rate/1000) // to convert it into tonnes/hour
disp("rate at which aluminium can be melted with given power =")
disp(rate)
disp("tonnes/hour")
mass=(V*dn)/1000;
disp("mass of aluminium that can be held =")
disp(mass)
disp("tonnes")
