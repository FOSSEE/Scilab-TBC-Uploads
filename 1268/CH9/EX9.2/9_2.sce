clc;
disp("Example 9.2")
density= 1000 // in kg/m^3
densitym=13600 // of mercury  in kg/m^3
c=0.62  // orifice coefficient
b=0.5
U=135.6/60 // velocity in m/s
delP= ((U*((1-b^4)^0.5)/c)^2)*density/2
g=9.81
R=delP/(g*(densitym-density))
disp(R,"Reading on the manometer is ")
