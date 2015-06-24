// scilab Code Exa 15.2 Centrifugal blower 3000 rpm

beta2=90; // rotor blade air angle at inlet in degree
N=3e3; // rotor Speed in RPM
T1=310;  // in Kelvin
p1=0.98; //Initial Pressure in bar
R=287;
n_d=0.88; // Efficiency of the drive
n_f=0.82; // Efficiency of the fan
Q=200/60; // discharge in m3/s
h=1000; // mm column of water
delp0=h*9.81;
Pi=Q*delp0/1000; // ideal power
P=Pi/(n_d*n_f);
disp("kW",P,"(a)Power required by the electric motor is")

// part(b) impeller diameter
ro=(p1*1e5)/(R*T1);
u2=sqrt(delp0/(ro*n_f));
d2=u2*60/(%pi*N);
disp("cm",d2*1e2,"(b)the impeller diameter is")

// part(c) inner diameter of the blade ring
c_r2=0.2*u2;
c_i=0.4*u2;
d1=sqrt(Q*4/(%pi*c_i));
disp("cm",d1*1e2,"(c)the inner diameter of the blade ring is")

// part(d) air angle at the entry
u1=u2*d1/d2;
beta1=atand(c_r2/u1);
disp("degree",beta1,"(d)the air angle at the entry beta1=")

// part(e) impeller widths at entry and exit
b1=Q/(c_r2*%pi*d1);
disp("cm",b1*1e2,"(e)the impeller width at entry is")
b2=b1*d1/d2;
disp("cm",b2*1e2,"and the impeller width at exit is")

// part(f) number of impeller blades
z=8.5*sind(beta2)/(1-(d1/d2));
disp(z,"(f)the number of impeller blades is")

// part(g) the specific speed
gH=u2^2;
omega=2*%pi*N/60;
NS=omega*sqrt(Q)/(gH^(3/4));
disp(NS,"(g)the dimensionless specific speed is")
