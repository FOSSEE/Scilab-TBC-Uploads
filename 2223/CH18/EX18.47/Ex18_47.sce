// scilab Code Exa 18.47 Crossflow Radial Hydro turbine

N=50; // Speed in RPM
H=25; // net head in m
Q=150; // discharge in m3/s
P=20; // Power Output in MW
d1=3.5; //  runner diameter in m
dr=1.3; // diameter ratio of the runner
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
u1=%pi*d1*N/60;
u2=u1/dr;
c_theta1=2*u1;
c_theta2=u2;
w_st1=(u1*c_theta1)-(u2*c_theta2);
u3=u2;
c_theta3=u2;
c_theta4=0;
w_st2=(u3*c_theta3)-(u1*c_theta4);
w_st=w_st1+w_st2;
// part(a)
n_h=w_st/(g*H);
disp("%",n_h*1e2,"(a)the hydraulic efficiency is")
Ph=rho*Q*w_st;
disp("MW",Ph*1e-6,"and the hydraulic power is")
n_o=P*1e6/(rho*Q*g*H);
disp("%",n_o*1e2,"and the overall efficiency is")
// part(b)
omega=%pi*2*N/60;
NS=omega*sqrt(P*1e6)*(H^(-5/4))/549.016;
disp(NS,"(b)the specific speed of turbine is")
// part(c)
disp("(c)Adopting the flow model of the crossflow wind turbine")
P_h=rho*Q*((2*(u1^2))+(u2^2));
disp("MW",P_h*1e-6,"the hydraulic power is")
nh=((2*(u1^2))+(u2^2))/(g*H);
disp("%",nh*1e2,"and hydraulic efficiency is")

