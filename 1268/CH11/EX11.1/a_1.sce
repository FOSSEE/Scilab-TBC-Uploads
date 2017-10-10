clc;
disp("Example A.1")
g=9.81
density=1000 // of water in kg/m^3
densitym=13600 // of mercury in kg/m^3
h=0.1 // in m 
p1=density*g*h
p2=p1+(densitym*g*h)
waterhead=p2/(density*g)
hghead=p2/(g*densitym)

disp(waterhead,"Head of water is ")
disp(hghead,"Head of mercury is ")
