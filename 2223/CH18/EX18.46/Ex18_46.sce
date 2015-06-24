// scilab Code Exa 18.46 Fourneyron Turbine 360 rpm

d2=3; // outer diameter of the impeller in m
d1=1.5; // inner diameter of the impeller in m
H=50; // net head in m
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
N=360; // rotor Speed in RPM
n_o=0.785; // overall efficiency
P=4; // Power Output in MW
u1=%pi*d1*N/60;
u2=%pi*d2*N/60;
// part(a)
Q=P*1e6/(n_o*rho*g*H);
disp("m3/s",Q,"(a)the discharge is")
c2=9; // velocity of water at exit in m/s
// part(b)
w_ET=(g*H)-(0.5*(c2^2));
n_h=w_ET/(g*H);
disp("%",n_h*1e2,"(b)the hydraulic efficiency is")
// part(c)
cr2=c2;
b=Q/(cr2*%pi*d2); // axial length of the impeller in m
disp("cm",b*1e2,"(c)the runner passage width is")
// part(d)
beta2=atand(cr2/u2);
disp("degree",beta2,"(d) the blade air angle at the impeller exit beta2=")
c_theta1=w_ET/u1;
cr1=Q/(b*%pi*d1);
beta1=atand(cr1/(u1-c_theta1));
disp("degree",beta1,"and the blade air angle at the impeller entry beta1=")
// part(e)
alpha1=atand(cr1/c_theta1);
disp("degree",alpha1,"(e)the guide vane exit angle is")
