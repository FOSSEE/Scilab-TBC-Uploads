// scilab Code Exa 9.3 Calculation on an axial turbine stage 

dh=0.450; // hub diameter in m
dt=0.750; // tip diameter in m
d=0.5*(dt+dh); // mean diameter of the impeller blade in m
r=d/2;
R_m=0.5; // degree of reaction for mean section
T1=500;  // Initial Temperature in degree C
t1=T1+273; // in Kelvin
p1=100; //  Initial Pressure in bar
N=6e3; // rotor Speed in RPM
m=100; //  in kg/s
alpha2m=75; //  air angle at nozzle exit
beta_2m=0; //  air angle at rotor entry
beta_3m=75; //  air angle at rotor exit
// assuming radial equillibrium and free vortex flow in the stage, axial velocity is constant throughout
u_m=%pi*d*N/60;
uh=%pi*dh*N/60;
ut=%pi*dt*N/60;
// for mean section
c_xm=u_m*cotd(alpha2m);
c_2m=(1/sind(alpha2m))*u_m;
c_t2m=u_m;

disp("for mean section")
// part(c) blade-to-gas speed ratio
sigma_m=u_m/c_2m;
disp(sigma_m,"(c)blade-to-gas speed ratio is")
// part(d) specific work
w_m=u_m*c_t2m;
disp("kJ/kg",w_m*1e-3,"(d)specific work is")
// part(e) the loading coefficient
shi_m=w_m/(u_m^2);
disp(shi_m,"(e)the loading coefficient is")

// for hub section
rh=dh/2;
n=(sind(alpha2m)^2);
c_x2h=c_xm*((r/rh)^n);
c_t2h=c_t2m*((r/rh)^n);
c_2h=c_2m*((r/rh)^n);
disp("for hub section")
disp("(a) the relative air angles are")
beta2h=atand((c_t2h-uh)/c_x2h);
disp("degree",beta2h,"air angle at rotor entry is beta2h= ")
beta3h=atand(uh/c_x2h);
disp("degree",beta3h,"air angle at rotor exit is beta3h= ")
// part(b) degree of reaction
Rh=c_x2h*(tand(beta3h)-tand(beta2h))*100/(2*uh);
disp("%",Rh,"(b)degree of reaction is")
// part(c) blade-to-gas speed ratio
sigmah=uh/c_2h;
disp(sigmah,"(c)blade-to-gas speed ratio is")
// part(d) specific work
wh=uh*c_t2h;
disp("kJ/kg",wh*1e-3,"(d)specific work is")
// part(e) the loading coefficient
shi_h=wh/(uh^2);
disp(shi_h,"(e)the loading coefficient is")

// for tip section
rt=dt/2;
c_x2t=c_xm*((r/rt)^n);
c_t2t=c_t2m*((r/rt)^n);
c_2t=c_2m*((r/rt)^n);
disp("for tip section")
disp("(a) the relative air angles are")
beta2t=atand((c_t2t-ut)/c_x2t);
disp("degree",beta2t,"air angle at rotor entry is beta2t= ")
beta3t=atand(ut/c_x2t);
disp("degree",beta3t,"air angle at rotor exit is beta3t= ")
// part(b) degree of reaction
Rt=c_x2t*(tand(beta3t)-tand(beta2t))*100/(2*ut);
disp("%",Rt,"(b)degree of reaction is")
// part(c) blade-to-gas speed ratio
sigmat=ut/c_2t;
disp(sigmat,"(c)blade-to-gas speed ratio is")
// part(d) specific work
wt=ut*c_t2t;
disp("kJ/kg",wt*1e-3,"(d)specific work is")
// part(e) the loading coefficient
shi_t=wt/(ut^2);
disp(shi_t,"(e)the loading coefficient is")
