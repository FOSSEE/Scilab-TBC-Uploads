clc;
disp("Example 9.3")
reading=0.35 // of manometer in m
g=9.81
densitym=13600 /// in kg/m^3
density=1200 // of water in kg/m^3
delP=g*reading*(densitym-density)
U=0.61*((2*delP/density)^0.5)
Q=0.01
A=Q/U
d=(A*4/%pi)^0.5
disp(d,"The orifice size is ")
