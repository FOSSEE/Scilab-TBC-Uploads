clc
cooling_load=150; //W
n_vol=0.8;
N=720; //rpm
h2=183; //kJ/kg
h1=74.5; //kJ/kg
v2=0.08; //m^3/kg

m=cooling_load/(108.5*1000);
disp("Mass flow rate of the refrigerant =")
disp(m)
disp("kJ/s")

d=m*v2/n_vol;
disp("Displacement volume of the compressor =")
disp(d)
disp("m^3/s")