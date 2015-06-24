// scilab Code Exa 18.35 Sirocco Radial fan 1440 rpm

d2=0.4; // outer diameter of the impeller in m
d1=0.36; // inner diameter of the impeller in m
b=0.5; // axial length of the impeller in m
rho=1.25; // density of air in kg/m3
N=1440; // rotor Speed in RPM
P=50; // Power required in kW

u1=%pi*d1*N/60;
u2=%pi*d2*N/60;
 
beta1=atand(d2/d1);
disp("degree",beta1,"(a)the blade air angle at the impeller entry beta1=")
beta2=90-beta1;
disp("degree",beta2,"and the blade air angle at the impeller exit beta2=")
delp0=2*rho*(u2^2);
disp("mm W.G.",delp0/9.81,"(b)the stagnation pressure rise across the fan is") 
cr1=u1*tand(beta1);
m=rho*cr1*%pi*d1*b;
disp("kg/s",m,"(c)mass flow rate of the air through the fan is")
c_theta1=0; // for zero inlet swirl
w_st=2*(u2^2);
IP=m*w_st/1000; // ideal power required to drive the fan in kW
n=IP/P;
disp("%",n*1e2,"(d)the Efficiency of the fan is") 
