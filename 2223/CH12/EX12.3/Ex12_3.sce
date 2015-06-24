// scilab Code Exa 12.3 Calculation on a centrifugal compressor stage 

funcprot(0)
T01=306;  // Entry Temperature in Kelvin
p01=1.05; //  Entry Pressure in bar
dh=0.12; // hub diameter in m
dt=0.24; // tip diameter in m
m=8; //  in kg/s
mu=0.92; // slip factor
n_st=0.77; // stage efficiency
gamma=1.4;
N=17e3; // rotor Speed in RPM
d_it=0.48; // Impeller tip diameter in m
d1=0.5*(dt+dh); // Mean Blade ring diameter
rm=d1/2;
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
A=%pi*((dt^2)-(dh^2))/4;
R=287;
n=86; // number of iterations
ro01=(p01*1e5)/(R*T01);
cx(1)=m/(ro01*A);
for i=1:n
    T1=T01-((cx(i)^2)/(2*cp));
    p1=p01*((T1/T01)^(1/((gamma-1)/gamma)));
ro1=(p1*1e5)/(R*T1);
cx(i+1)=m/(ro1*A);
if cx(i+1)==cx(i) then
    disp("m/s",cx(i+1),"cx=")
    disp(T1,"T1")
disp(p1,"p1")
disp(ro1,"ro1")
end 
end
cx1=cx(i+1);
u1m=%pi*d1*N/60;
omega=u1m/rm;
rh=dh/2;
rt=dt/2;
uh=omega*rh;
ut=omega*rt;
u2=d_it*u1m/d1;
beta1h=atand(cx1/uh);
beta1m=atand(cx1/u1m);
beta1t=atand(cx1/ut);
disp("(a) Without IGVs")
disp("degree",beta1h,"air angle at hub section beta1h=")
disp("degree",beta1m,"air angle at mean section beta1m=")
disp("degree",beta1t,"air angle at tip section beta1t=")
w1t=cx1/(sind(beta1t));
a1=sqrt(gamma*R*T1);
M1t=w1t/a1;
disp(M1t,"the maximum Mach number at inducer blade entry M1t=")
pr0=((1+(mu*n_st*(u2^2)/(cp*T01)))^(1/((gamma-1)/gamma)));
disp(pr0,"total pressure ratio developed is")
P=m*mu*(u2^2);
disp ("kW",P/1000,"Power required to drive the compressor without IGVs is")

// part(b) with IGVs
alpha1h=beta1h;
alpha1m=beta1m;
alpha1t=beta1t;
disp("(b)With IGVs")
disp("degree",alpha1h,"air angle at hub section alpha1h=")
disp("degree",alpha1m,"air angle at mean section alpha1m=")
disp("degree",alpha1t,"air angle at tip section alpha1t=")
c1t=cx1/(sind(alpha1t));
T1t=T01-((c1t^2)/(2*cp));
a1t=sqrt(gamma*R*T1t);
Mw1t=cx1/a1t;
disp(Mw1t,"the maximum Mach number at inducer blade entry Mw1t=")
pr0_w=((1+(n_st*(mu*(u2^2)-(u1m^2))/(cp*T01)))^(1/((gamma-1)/gamma)));
disp(pr0_w,"total pressure ratio developed is")
P_w=m*(mu*(u2^2)-(u1m^2));
disp ("kW",P_w/1000,"Power required to drive the compressor is")
disp("Comment: here the solution is found out using programming, so this gives slightly small variation from tha answers given in hte book, but answers from the present solution are exact.")
