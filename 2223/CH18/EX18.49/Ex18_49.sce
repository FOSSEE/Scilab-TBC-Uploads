// scilab Code Exa 18.49 Centrifugal pump 890 kW

H=50; // head developed in m
P=890; // Power required in kW
NS=0.75; //specific speed
rho=1e3;
g=9.81; // Gravitational acceleration in m/s^2
n_h=0.91; // hydraulic efficiency
f=0.925; // blockage factor for the flow
Q=1.5; // discharge in m3/s of water
u2=0.8*sqrt(2*g*H);
cr2=0.3*sqrt(2*g*H);
dr=0.5; // diameter ratio(d1/d2)
// part(a)
omega=NS*(H^(3/4))/(0.1804*sqrt(Q));
N=omega*60/(2*%pi);
disp("rpm",N,"(a)the speed of rotation is")
// part(b) impeller diameter
d2=u2*60/(%pi*N);
disp("m",d2,"(b)the impeller diameter is")
//part(c)
c_theta2=g*H/(u2*n_h);
beta2=atand(cr2/(u2-c_theta2));
disp("degree",beta2,"(c)the blade air angle at the impeller exit beta2=")
u1=u2*dr;
cr1=cr2;
beta1=atand(cr1/u1);
disp("degree",beta1,"and the blade air angle at the impeller entry beta1=")
//part(d)
b2=Q/(cr2*%pi*d2*f);
disp("m",b2,"(d)the impeller width at exit is")
//part(e)overall Efficiency
n_o=rho*Q*H*g/(P*1e3);
disp("%",n_o*1e2,"(e)overall efficiency is")
