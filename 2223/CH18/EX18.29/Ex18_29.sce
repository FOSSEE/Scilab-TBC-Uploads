// scilab Code Exa 18.29 Centrifugal compressor with vaned diffuser 
T01=310;  // in Kelvin
p01=1.103; //  Initial Pressure in bar
dh=0.10; // hub diameter in m
d2=0.55; // impeller diameter in m
c1=100; // Velocity of air at the entry of inducer
c3=c1; // Velocity of air at diffuser exit
shi=1.035; // power input factor
mu=0.9; // slip factor
m=7.5; //  in kg/s
gamma=1.4;
N=15e3; // rotor Speed in RPM
disp("(a)for radially tipped blades")
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
n_tt=0.81; // total to total efficiency
T1=T01-((c1^2)/(2*cp));
p1=p01*((T1/T01)^(gamma/(gamma-1)));
ro1=(p1*1e5)/(R*T1);
A1=m/(ro1*c1);
dt=sqrt((A1*4/(%pi))+(dh^2));
disp("cm",dt*1e2,"(i)tip diameter of the inducer at entry is")
d1=0.5*(dt+dh); // Mean Blade ring diameter
u1=%pi*d1*N/60;
w1=sqrt((u1^2)+(c1^2));
a1=sqrt(gamma*R*T1);
M1_rel=w1/a1;
disp(M1_rel,"(ii)the Relative Mach number at inducer blade entry Mw1=")
u2=%pi*d2*N/60;
w_st=shi*mu*(u2^2);
T02=T01+(w_st/cp);
T02s=T01+(n_tt*(T02-T01));
pr_0=(T02s/T01)^(gamma/(gamma-1));
disp(pr_0,"(iii)stagnation pressure ratio developed is")
P=m*cp*(T02-T01);
disp("kW",P*1e-3,"(iv)the power required is")
disp("(b)for vaned diffuser")
c_theta2=mu*u2; // velocity of whirl(swirl component) at the impeller exit
// vaneless space between the impeller exit and the vaned diffuser entry=0.1*impeller radius
//r2s=r2*1.1;
// width of the casing after the impeller exit=1.4*impeller passage width
c_theta2s=c_theta2/(1.1*1.4);
cr2=c1;
cr2s=cr2/(1.1*1.4);
c2s=sqrt((cr2s^2)+(c_theta2s^2));
alpha2s=atand(cr2s/c_theta2s);
disp("degree",alpha2s,"(i)the direction of flow at the diffuser entry is alpha2s=")
T2s=T02-((c2s^2)/(2*cp));
a2s=sqrt(gamma*R*T2s);
M2s=c2s/a2s;
disp(M2s,"(ii)the Mach number at the diffuser entry is")
Ar=c2s/c3;
d3_2s=1.16; // d3/d2s from last trial given in the book
alpha3=acosd(cosd(alpha2s)/d3_2s);
Ar_v=d3_2s*sind(alpha3)/(sind(alpha2s));
disp(Ar_v,"(iii)Area ratio of the vaned diffuser is")
T03=T02;
T3=T03-((c3^2)/(2*cp));
pr3_1=(((T3*T01)/(T1*T03))^(gamma/(gamma-1)))*pr_0;
disp(pr3_1,"(iv)the static pressure ratio of the compressor is")
disp("comment: Calculations in the book are wrong in the beginning itself for p1. so the values slightly differs here only for part(a)")
