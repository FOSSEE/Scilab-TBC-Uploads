// scilab Code Exa 18.43 Francis turbine 250 rpm

NS=0.4; //specific speed
N=250; // Speed in RPM
H=75; // net head in m
beta3=25; // exit angle of the runner blades
n_o=0.81; // overall efficiency
g=9.81; // gravitational acceleration in m/s2
rho=1000; // density in kg/m3
// part(a)
u2=0.6*sqrt(2*g*H);
cr2=0.21*sqrt(2*g*H);
omega=%pi*2*N/60;
Q=(NS^2)*(H^(3/2))/((0.1804^2)*(omega^2));
disp("m3/s",Q,"(a)the discharge rate for the turbine is")
// part(b)
d2=u2*60/(%pi*N);
disp("m",d2,"(b)outer diameter of the runner blade ring is")
cr3=cr2;
cx3=cr3;
//Euler work,w_ET=u2*c_theta2
c_theta2=((g*H)-(0.5*(cx3^2)))/u2;
u3=cx3/(tand(beta3));
d3=u3*60/(%pi*N);
disp("m",d3,"and inner diameter of the runner blade ring is")
// part(c)
alpha2=atand(cr2/c_theta2);
disp("degree",alpha2,"(c)the inlet guide vane exit angle is")
beta2=atand(cr2/(c_theta2-u2));
disp("degree",beta2,"and inlet angle of the runner blades is beta2= ")
// part(d)
n_h=(u2*c_theta2)/(g*H);
disp("%",n_h*1e2,"(d)the hydraulic efficiency is")
// part(e)
P=n_o*rho*g*Q*H;
disp("MW",P*1e-6,"(e)the output power is")
disp("comment: the calculation for c_theta2 is done wrongly in the book. hence the values of alpha2,beta2, n_h differs from the book.")
