// scilab Code Exa 15.1 Centrifugal fan stage 1450 rpm

d1=0.18; // inner diameter of the impeller in m
d2=0.2; // outer diameter of the impeller in m
N=1450; // rotor Speed in RPM
c1=21; // Absolute velocity at entry in m/s
w1=20; // relative velocity at entry in m/s
c2=25; // Absolute velocity at exit in m/s
w2=17; // relative velocity at exit in m/s
m=0.5; // flow rate in kg/s
n_m=0.78; // overall Efficiency of the motor
ro=1.25; // density of air in kg/m3

u1=%pi*d1*N/60;
u2=%pi*d2*N/60;
delp_r=0.5*ro*((w1^2)-(w2^2))+(0.5*ro*((u2^2)-(u1^2)));
delp0_st=0.5*ro*(((w1^2)-(w2^2))+((u2^2)-(u1^2))+((c2^2)-(c1^2)));
disp("mm W.G.",delp0_st/9.81,"(a)stage pressure rise is")
DOR=delp_r/delp0_st;
disp(DOR,"(b)the degree of reaction is") 
w_st=delp0_st/ro;
P=m*w_st/n_m;
disp("W",P,"(c)the motor Power required to drive the fan is")
