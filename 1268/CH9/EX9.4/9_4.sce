clc;
disp("Example 9.4")
reading=9.7e-3 // of manometer in m
g=9.81
densitym=13600 /// in kg/m^3
density=1200 // of water in kg/m^3
delP=g*reading*(densitym-density)
U=84/60
b=0.333
c=U*((density*(1-b^4)/(2*delP))^0.5)
disp(c,"The venturi coefficient is ")
