// scilab Code Exa 14.5 DGVs and upstream guide vanes
beta2=86; // rotor blade air angle at inlet in degree
beta3=10; // rotor blade air angle at exit in degree
dh=0.3; // hub diameter in m
dt=0.6; // tip diameter in m
N=960; // rotor Speed in RPM
phi=0.245; // flow coefficient
T1=316;  // in Kelvin
p1=1.02; //Initial Pressure in bar
R=287;
n_d=0.8; // Efficiency of the drive
n_f=0.85; // Efficiency of the fan
A=%pi*((dt^2)-(dh^2))/4;
d=0.5*(dt+dh);
u=%pi*d*N/60;
cx=phi*u;
Q=cx*A;
ro=(p1*1e5)/(R*T1);
delh0_st=2*(u^2)*((phi*(tand(beta2)))-1);
delp0_st=n_f*ro*delh0_st;
disp("mm W.G.",delp0_st/9.81,"static pressure rise in the stage is")
shi=4*((phi*(tand(beta2)))-1);
disp(shi,"stage pressure coefficient is")
m=ro*Q;
P=m*delh0_st/n_d;
disp("kW",P/1000,"Power of the electric motor is")
