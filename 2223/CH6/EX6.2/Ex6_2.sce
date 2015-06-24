// scilab Code Exa 6.2 radially tipped Centrifugal blower 3000rpm
P=150; // Power Output in kW
N=3e3; // Speed in RPM
d2=40/100; // outer diameter of the impeller in m
d1=25/100; // inner diameter of the impeller in m
b=8/100; // impeller width at entry in m
n_st=0.7; // stage efficiency
V1=22.67; // Absolute Velocity at entry in m/s
ro=1.25; // density of air in kg/m3

// part(a) determining the pressure developed
u2=%pi*d2*N/60;
u1=d1*u2/d2;
w_ac=u2^2;
delh_s=n_st*w_ac;
delp=ro*delh_s;
disp ("mm W.G." ,delp/9.81,"(a)the pressure developed is")

// part (b) determining the power required
A1=%pi*d1*b;
m=ro*V1*A1;
P=m*w_ac/10e2;
disp("kW",P,"(b)Power required is")
