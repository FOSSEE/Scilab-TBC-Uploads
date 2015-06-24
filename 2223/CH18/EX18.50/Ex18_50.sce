// scilab Code Exa 18.50 Centrifugal pump 1500 rpm

N=1500; // rotor Speed in RPM
H=5.2; // head in m
b=2/100; // width in m
d1=2.5/100; // entry diameter of the blade ring in m
d2=0.1; // exit diameter of the blade ring in m
rho=1e3;
g=9.81; // Gravitational acceleration in m/s^2
n_o=0.75; // overall Efficiency of the drive
u2=%pi*d2*N/60;
u1=u2*d1/d2;
// part(a)impeller blade angle at the entry
c_r2=0.4*u2;
c_r1=c_r2*d2/d1;
beta1=atand(c_r1/u1);
disp("degree",beta1,"(a)the impeller blade angle at the entry beta1=")
//part(b) discharge
Q=c_r1*%pi*d1*b;
disp("litres/sec",Q*1e3,"(b)the discharge is")
//part(c)Power required
P=(rho*Q*g*H)/(n_o);
disp("kW",P*1e-3,"(a)Power required to drive the pump is")
// part(d)
omega=%pi*2*N/60;
NS=(H^(-3/4))*0.1804*(omega)*sqrt(Q);
disp(NS,"(d)the specific speed is")
