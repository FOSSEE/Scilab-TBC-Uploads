// scilab Code Exa 18.44 Pelton Wheel 360 rpm

d=2; // mean diameter in m
N=360; // Speed in RPM
theta=150; //deflection angle of water jet in degree
H=140; // net head for the model in m
q=45000; // discharge in litres/min
Q=q*1e-3/60; // in m3/s
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
// part(a)
u=%pi*d*N/60;
c2=sqrt(2*g*H);
sigma=u/c2;
disp(sigma,"(a)blade to jet speed ratio is")
// part(b)
w2=c2-u;
w3=w2;
beta2=0;
beta3=180-theta;
cy2=c2;
cy3=u-(w3*cosd(beta3));
w_T=u*(cy2-cy3);
m=rho*Q;
P_T=m*w_T;
disp("kW",P_T*1e-3,"(b)the power developed is")
// part(c)
n=w_T/(0.5*(c2^2));
disp("%",n*1e2,"(c)the efficiency is")
// part(d)
n_max=0.5*(1+cosd(beta3));
disp("%",n_max*1e2,"(d)the Maximum efficiency is")
P_max=m*g*H*n_max;
disp("kW",P_max*1e-3,"and the Maximum power developed is")
// part(e)
sigma_opt=0.5; // for Maximum efficiency
u_opt=sigma_opt*c2;
N_opt=u_opt*60/(d*%pi);
disp("rpm",N_opt,"(e)speed of the rotation corresponding to Maximum efficiency is")
// part(f)
omega=%pi*2*N/60;
NS=omega*sqrt(P_T)*(H^(-5/4))/549.016;
disp(NS,"(f)the specific speed of turbine is")
