// scilab Code Exa 9.2 Calculation on an axial turbine stage 

dh=0.450; // hub diameter in m
dt=0.750; // tip diameter in m
d=0.5*(dt+dh); // mean diameter of the impeller blade in m
r=d/2;
T1=500;  // Initial Temperature in degree C
t1=T1+273; // in Kelvin
p1=100; //  Initial Pressure in bar
N=6e3; // rotor Speed in RPM
m=100; //  in kg/s
alpha2m=75; //  air angle at nozzle exit
beta2m=45; //  air angle at rotor entry
beta3m=76; //  air angle at rotor exit
u=%pi*d*N/60;
uh=%pi*dh*N/60;
ut=%pi*dt*N/60;
// for mean section
c2m=(cosd(beta2m)/sind(alpha2m-beta2m))*u;
cx2m=c2m*cosd(alpha2m);
ct2m=c2m*sind(alpha2m);
ct3m=(cx2m*tand(beta3m))-u;
C2=r*ct2m;
C3=r*ct3m;

// part(a) the relative and absolute air angles 
disp("for mean section")
disp("(a) the relative and absolute air angles are")
disp("degree",beta2m,"air angle at rotor entry is beta2m= ")
disp("degree",beta3m,"air angle at rotor exit is beta3m= ")
disp("degree",alpha2m,"air angle at nozzle exit is alpha2m= ")
// part(b) degree of reaction
cx=cx2m;
R=cx*(tand(beta3m)-tand(beta2m))*100/(2*u);
disp("%",R,"(b)degree of reaction is")
// part(c) blade-to-gas speed ratio
sigma=u/c2m;
disp(sigma,"(c)blade-to-gas speed ratio is")
// part(d) specific work
omega=2*%pi*N/60;
w=omega*(C2+C3);
disp("kJ/kg",w*1e-3,"(d)specific work is")
// part(e) the loading coefficient
z=w/(u^2);
disp(z,"(e)the loading coefficient is")

// for hub section
rh=dh/2;
alpha2h=atand(C2/(rh*cx));
disp("for hub section")
disp("(a) the relative and absolute air angles are")
disp("degree",alpha2h,"air angle at nozzle exit is alpha2h= ")
beta2h=atand(tand(alpha2h)-(uh/cx));
disp("degree",beta2h,"air angle at rotor entry is beta2h= ")
beta3h=atand((C3/(rh*cx))+(uh/cx));
disp("degree",beta3h,"air angle at rotor exit is beta3h= ")
// part(b) degree of reaction
Rh=cx*(tand(beta3h)-tand(beta2h))*100/(2*uh);
disp("%",Rh,"(b)degree of reaction is")
// part(c) blade-to-gas speed ratio
c2h=cx/(cosd(alpha2h));
sigmah=uh/c2h;
disp(sigmah,"(c)blade-to-gas speed ratio is")
// part(d) specific work
wh=uh*cx*(tand(beta3h)+tand(beta2h));
disp("kJ/kg",wh*1e-3,"(d)specific work is")
// part(e) the loading coefficient
zh=wh/(uh^2);
disp(zh,"(e)the loading coefficient is")

// for tip section
rt=dt/2;
alpha2t=atand(C2/(rt*cx));
disp("for tip section")
disp("(a) the relative and absolute air angles are")
disp("degree",alpha2t,"air angle at nozzle exit is alpha2t= ")
beta2t=atand(tand(alpha2t)-(ut/cx));
disp("degree",beta2t,"air angle at rotor entry is beta2t= ")
beta3t=atand((C3/(rt*cx))+(ut/cx));
disp("degree",beta3t,"air angle at rotor exit is beta3t= ")
// part(b) degree of reaction
Rt=cx*(tand(beta3t)-tand(beta2t))*100/(2*ut);
disp("%",Rt,"(b)degree of reaction is")
// part(c) blade-to-gas speed ratio
c2t=cx/(cosd(alpha2t));
sigmat=ut/c2t;
disp(sigmat,"(c)blade-to-gas speed ratio is")
// part(d) specific work
wt=ut*cx*(tand(beta3t)+tand(beta2t));
disp("kJ/kg",wt*1e-3,"(d)specific work is")
// part(e) the loading coefficient
zt=wt/(ut^2);
disp(zt,"(e)the loading coefficient is")
