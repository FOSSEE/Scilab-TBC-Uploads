// scilab Code Exa 8.4 blower type annular cascade tunnel

t=35;
T=t+273;  // test Temperature in Kelvin
p=1.02; //  test Pressure in bar
dm=50/100; // mean diameter of the impeller blade in m
b=15/100; // blade length in m
n_o=0.6; // stage efficiency
R=287;
c=100; // Maximum Velocity upstream of the cascade in m/s
ro=p*10e4/(R*T); // density of air in kg/m3

// part(a) determining the total pressure developed by the blower
d_h=0.5*ro*(c^2);
loss=0.1*d_h;
delp=d_h+loss;
disp ("mm W.G." ,delp/9.81,"(a)the pressure developed is")

// part (b) determining the discharge
A=%pi*dm*b; // the annulus cross-sectional area 
Q=c*A;
disp ("m3/min" ,Q*60,"(b)the discharge is")

// part (c) determining the power required to drive the blower
P=Q*delp/(n_o*10e2);
disp("kW",P,"(c)Power required to drive the blower is")
