clc;
V=0.3;//m^3
vg=4.133;//m^3/kg
m=V/vg;
disp("mass of water injected:");
disp("kg",m)

//part B
pa=0.7;//bar
pg=0.3855;//bar
v=0.001026;
ms=(V-[pa*v])/[vg-v];

mw=pa-ms;
V_d=ms*vg
pa2=pa*V/V_d;
disp("total pressure is:");
disp("bar",pa2+pg);
