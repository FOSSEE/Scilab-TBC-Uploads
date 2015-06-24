// scilab Code Exa 14.2 Downstream guide vanes

beta3=10; // rotor blade air angle at exit in degree
dh=0.3; // hub diameter in m
dt=0.6; // tip diameter in m
N=960; // rotor Speed in RPM
phi=0.245; // flow coefficient
d=0.5*(dt+dh);
u=%pi*d*N/60;
cx=phi*u;
cy3=u-(cx*tand(beta3));
alpha3=atand(cy3/cx);
disp("the rotor blade air angles, overall efficiency, flow rate, power required and degree of reaction are the same as calculated in Ex14_1")
disp("degree",alpha3,"the guide vane air angle at the entry alpha3=")
