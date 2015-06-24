// scilab Code Exa 12.1 Calculation on a centrifugal compressor stage 
T01=335;  // in Kelvin
funcprot(0);
p01=1.02; //  Initial Pressure in bar
dh=0.10; // hub diameter in m
dt=0.25; // tip diameter in m
m=5; //  in kg/s
gamma=1.4;
N=7.2e3; // rotor Speed in RPM
d1=0.5*(dt+dh); // Mean Blade ring diameter
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
A=%pi*((dt^2)-(dh^2))/4;
R=287;
// I trial
ro1=(p01*1e5)/(R*T01);
cx0=m/(ro1*A);
T0=T01-((cx0^2)/(2*cp));
n=(gamma-1)/gamma;
p1=p01*((T0/T01)^(1/n));
ro=(p1*1e5)/(R*T0);
cx=m/(ro*A);
// II Trial
cx2=123;
T1=T01-((cx2^2)/(2*cp));
p2=p01*((T1/T01)^(1/n));
ro2=(p2*1e5)/(R*T1);
cx1=m/(ro2*A);
u1=%pi*d1*N/60;
beta1=atand(cx1/u1);
disp("degree",beta1,"air angle at inducer blade entry beta1=")
w1=cx1/(sind(beta1));
a1=sqrt(gamma*R*T1);
Mw1=w1/a1;
disp(Mw1,"the Relative Mach number at inducer blade entry Mw1=")
alpha1=atand(cx1/u1);
disp("degree",alpha1,"air angle at IGVs exit alpha1=")
c1=cx1/(sind(alpha1));
T1_new=T01-((c1^2)/(2*cp));
a1_new=sqrt(gamma*R*T1_new);
Mw1_new=cx1/a1_new;
disp(Mw1_new,"the new value of Relative Mach number Mw1_new=")
