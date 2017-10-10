clc;
disp("Example 4.10")
d=0.05 // diameter in m
density=1000 // density in kg/m^3
mew= 0.001 // viscosity in kg/ms
flowrate= 100/60 // in kg/s
avgvelo=flowrate*4/(%pi*density*d*d)

Re= avgvelo*d*density/mew
if Re<50000 then
    f=0.079/(Re^0.25)
end
disp(" The friction factor is ")
disp(f)
