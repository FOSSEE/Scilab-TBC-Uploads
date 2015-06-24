// scilab Code Exa 14.1 Axial fan stage 960 rpm
beta3=10; // rotor blade air angle at exit in degree
dh=0.3; // hub diameter in m
dt=0.6; // tip diameter in m
N=960; // rotor Speed in RPM
P=1; // Power required in kW
phi=0.245; // flow coefficient
T1=316;  // in Kelvin
p1=1.02; //Initial Pressure in bar
R=287;
A=%pi*((dt^2)-(dh^2))/4;
d=0.5*(dt+dh);
u=%pi*d*N/60;
cx=phi*u;
Q=cx*A;
ro=(p1*1e5)/(R*T1);
delp0_st=ro*(u^2)*(1-(phi*(tand(beta3))));
disp("mm W.G.",delp0_st/9.81,"stage pressure rise is")
IP=Q*delp0_st/1000; // ideal power required to drive the fan in kW
n_o=IP/P;
disp("%",n_o*1e2,"the overall Efficiency of the fan is") 
beta2=atand(u/cx);
disp("degree",beta2,"the blade air angle at the entry beta2=")
delp_st=0.5*ro*(u^2)*(1-(phi^2*(tand(beta3)^2)));
DOR=delp_st/delp0_st;
disp("%",DOR*1e2,"the degree of reaction is") 
omega=2*%pi*N/60;
gH=delp0_st/ro;
NS=omega*sqrt(Q)/(gH^(3/4));
disp(NS,"the dimensionless specific speed is")
