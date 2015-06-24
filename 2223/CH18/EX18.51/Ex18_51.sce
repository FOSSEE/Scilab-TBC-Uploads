// scilab Code Exa 18.51 Axial pump 360 rpm

N=360; // rotor Speed in RPM
dh=0.30; // hub diameter of the impeller in m
beta2=48; // exit angle of the runner blades(from the tangential direction)
cx=5; // axial velocity of water through the impeller in m/s
n_h=0.87; // hydraulic efficiency
n_o=0.83; // overall Efficiency 
Q=2.5; // discharge in m3/s
rho=1e3;
g=9.81; // Gravitational acceleration in m/s^2
//part(a)
dt=sqrt((4*Q/(cx*%pi))+(dh^2));
disp("m",dt,"(a)the impeller tip diameter is")
// part(b)impeller blade angle at the entry
d=0.5*(dt+dh); // mean diameter of the impeller blade in m
u=%pi*d*N/60;
beta1=atand(cx/u);
disp("degree",beta1,"(b)the impeller blade angle at the entry beta1=")
// part(c)
cy2=u-(cx/tand(beta2));
H=n_h*u*cy2/g;
disp("m",H,"(c)the head developed is")
//part(d)Power required
P=(rho*Q*g*H)/(n_o);
disp("kW",P*1e-3,"(d)Power required to drive the pump is")
// part(e)
omega=%pi*2*N/60;
NS=(H^(-3/4))*0.1804*(omega)*sqrt(Q);
disp(NS,"(e)the specific speed is")
