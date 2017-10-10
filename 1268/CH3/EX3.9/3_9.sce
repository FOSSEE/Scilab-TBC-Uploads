clc;
disp("Example 3.9")
d= 0.005  // diameter in metres
density= 900  // in kg/m^3
mew=0.5   // kg/ms
Q=5e-6 // flow rate in m^3/sec
U= (4*Q)/(%pi*d*d)  // volumetric flow rate per area of cross section

Re= d*U*density/mew
disp(" The Reynolds number is ")
disp(Re)
disp(" . Hence we can apply hagen poiseulli law.")
pgrad=128*mew*Q/(%pi*d*d*d*d)
disp(" Pressure gradient is ")
disp(pgrad)
disp(" N/m^3")
