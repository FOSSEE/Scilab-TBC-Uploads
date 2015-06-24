// scilab Code Exa 16.1 Wind turbine output 100 kW

c_u=48*5/18; // wind upstream velocity in m/s
n=0.95; // overall Efficiency of the drive
P=100; // aerogenerator power output in kW
n_m=0.9; // mechanical Efficiency of the drive
n_a=0.7; // aerodynamic Efficiency
ro=1.125; // density of air in kg/m3
cp_max=0.593; // power coefficient for the windmill(Pi/Pu)

// part(a) propeller diameter of the windmill
A=2*P*1e3/(ro*(c_u^3)*n*n_m*n_a*cp_max);
d=sqrt(4*A/%pi);
disp("m",d,"(a)the propeller diameter of the windmill is")

// part(b)
disp("(b)corresponding to maximum power")
c=2*c_u/3;
disp("m/s",c,"the wind velocity through the propeller disc is")
delp1_a=5*ro*(c^2)/8;
disp("mm W.G.",delp1_a/9.81,"the gauge pressure just before the disc is")
delp2_a=-3*ro*(c^2)/8;
disp("mm W.G.",delp2_a/9.81,"the gauge pressure just after the disc is")
Fx=(delp1_a-delp2_a)*A;
disp("kN",Fx*1e-3,"and the axial thrust is")
