clc;
disp("Example 8.1")
d=0.05 // diameter in m
density= 1680 // in kg/m^#
mew= 0.45 // in kg/ms
rate=10 // in kg/s
Q=rate/density
U=4*Q/(%pi*d*d)
Re= d*density*U/mew
if (Re<2100) then
    f=16/Re
    delP=2*f*density*U*U/d
    disp(delP,"Pressure Gradient is ")
end
