clc
//calc atm pressure on a storage tank roof
p_atm=14.7;//psia
//diameter of roof is 120ft
d_roof=120;//ft
//force=(atm. pressure + gauge pressure)*(area)
//gauge pressure=(desity)*(acc. due to gravity)*(depth)
rho_water=62.3//lbm/ft^3
g=32.2;//ft/s^2
//depth of water on roof=8 inch=o.667 ft
h=0.667;//ft
gauge_pressure=rho_water*g*h/32.2*(%pi)*d_roof^2/4;//lbf
disp(gauge_pressure)
