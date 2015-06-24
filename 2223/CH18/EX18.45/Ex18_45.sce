// scilab Code Exa 18.45 Kaplan turbine 120 rpm

N=120; // Speed in RPM
H=25; // net head in m
Q=120; // discharge in m3/s
dt=5; // runner diameter in m
dh_t=0.4; // hub-tip ratio of the runner
beta2=150; //inlet angle of the runner blades in degree
n_o=0.8; // overall efficiency
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
// part(a)
P=n_o*rho*g*Q*H;
disp("MW",P*1e-6,"(a)the output power is")
// part(b)
omega=%pi*2*N/60;
NS=omega*sqrt(P)*(H^(-5/4))/549.016;
disp(NS,"(b)the specific speed of turbine is")
// part(c)
dh=dh_t*dt;
d=0.5*(dt+dh); // mean diameter of the impeller blade in m
u=%pi*d*N/60;
cx=Q*4/(%pi*(dt^2-dh^2));
cy2=u-(cx*tand(90-(180-beta2)));
alpha2=atand(cx/cy2);
disp("degree",alpha2,"(c)the inlet guide vane exit angle is")
// part(d)
beta3=atand(cx/u);
disp("degree",beta3,"(d)the exit angle of the runner blades is beta3= ")
// part(e)
n_h=(u*cy2)/(g*H);
disp("%",n_h*1e2,"(e)the hydraulic efficiency is")
