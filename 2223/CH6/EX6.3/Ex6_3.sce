// scilab Code Exa 6.3 Calculation on an axial flow fan
N=1.47e3; // Speed in RPM
d=30/100; // Mean diameter of the impeller in m
ro=1.25; // density of air in kg/m3

// part(b) determining the pressure rise across the fan
u=%pi*d*N/60;
w_c=u^2/3;
delp=ro*w_c;
disp ("mm W.G." ,delp/9.81,"(b)the pressure rise across the fan is")
