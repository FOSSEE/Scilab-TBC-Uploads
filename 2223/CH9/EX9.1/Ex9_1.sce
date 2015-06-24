// scilab Code Exa 9.1 Calculation on multi stage turbine

d=1; // mean diameter of the impeller blade in m
T1=500;  // Initial Temperature in degree C
t1=T1+273; // in Kelvin
p1=100; //  Initial Pressure in bar
N=3e3; // Speed in RPM
m=100; //  in kg/s
alpha2=70; // exit angle of the first stage nozzle blades

// part(a) single stage impulse 
nsti=0.78;
u=%pi*d*N/60;
sigma=0.5*(sind(alpha2)); // maximum utilization factor
c2=u/sigma;
cx=c2*(cosd(alpha2));
beta2=atand(0.5*(tand(alpha2))); // beta2=beta3
wst=2*(u^2)*1e-3;
P=m*wst;
disp("(a)for single stage impulse")
disp("degree",beta2,"blade angles are beta2=beta3= ")
disp("MW",P*1e-3,"Power developed is")

sv=0.04; // specific volume of steam after expansion in m3/kg
h=(m*sv)/(cx*%pi*d); // h2=h3=h
disp("cm",h*1e2,"blade height is")
delhs=wst/nsti;
disp("final state of the steam is")
p=81.5; // from enthalpy-entropy diagram
T=470;
disp("bar",p,"p=")
disp("degree C",T,"T=")

// part(b) Two-stage Curtis wheel  
nstc=0.65;
u=%pi*d*N/60;
sigma2=0.25*(sind(alpha2));
c2_2=u/sigma2;
cx2=c2_2*(cosd(alpha2));
beta2_2=atand((3*u)/cx2); // beta2=beta3
alpha3=atand((2*u)/(c2_2*cosd(alpha2))); // alpha2'=alpha3
beta2_s=atand((u)/cx2); // beta2'=beta3'
wI=6*(u^2)*1e-3;
wII=2*(u^2)*1e-3;
wst2=wI+wII;
P2=m*wst2;
disp("(b)for Two-stage Curtis wheel")
disp("degree",alpha3,"air angles are alpha2s=alpha3= ")
disp("degree",beta2_2,"for first stage blade angles are beta2=beta3= ")
disp("degree",beta2_s,"for second stage blade angles are beta2s=beta3s= ")

disp("MW",P2*1e-3,"Power developed is")

delhs2=wst2/nstc;
// from enthalpy-entropy diagram for the expansion
disp("final state of the steam is")
p2=27;
T2=365;
v2=0.105; // specific volume of steam after expansion in m3/kg
disp("bar",p2,"p=")
disp("degree C",T2,"T=")
disp("m3/kg",v2,"v=")
h2=(m*v2)/(cx2*%pi*d);
disp("cm",h2*1e2,"blade height is")

// part(c) Two-stage Reateau wheel  
nst1=0.78;
wI3=2*(u^2)*1e-3;
wII3=2*(u^2)*1e-3;
wst3=wI3+wII3;
P3=m*wst3;
disp("(c)for Two-stage Reateau wheel")
disp("degree",beta2,"blade angles are beta2=beta3= ")
disp("MW",P3*1e-3,"Power developed is")
delhs3=wst3/nst1;
disp("final state of the steam is")
p3=65; // from enthalpy-entropy diagram
T3=445;
v3=0.05; // specific volume of steam after expansion in m3/kg
disp("bar",p3,"p=")
disp("degree C",T3,"T=")
disp("m3/kg",v3,"v=")
h3=(m*v3)/(cx*%pi*d);
disp("cm",h3*1e2,"blade height for the second stage is")

// part(d) single stage 50% reaction 
nstr=0.85;
sigma4=sind(alpha2); // maximum utilization factor
c2_4=u/sigma4; // c2_4=w_3
cx4=c2_4*(cosd(alpha2)); // alpha2=beta3;
beta2_4=0; // beta2=alpha3
wst4=(u^2)*1e-3;
P4=m*wst4;
disp("(d)for single stage 50% reaction")
disp("degree",beta2_4,"blade angles are beta2=alpha3= ")
disp("degree",alpha2,"and beta3=alpha2= ")
disp("MW",P4*1e-3,"Power developed is")
delhs4=wst4/nstr;
// from enthalpy-entropy diagram 
disp("final state of the steam is")
p4=90;
T4=485;
v4=0.035;
disp("bar",p4,"p=")
disp("degree C",T4,"T=")
disp("m3/kg",v4,"v=")
h4=(m*v4)/(cx4*%pi*d);
disp("cm",h4*1e2,"the rotor blade height at exit is")
