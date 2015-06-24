// scilab Code Exa 11.1 Calculation on an axial compressor stage 

Rm=0.5; // Degree of reaction
funcprot(0);
T1=300;  // in Kelvin
p1=1; //  Initial Pressure in bar
gamma=1.4;
N=18e3; // rotor Speed in RPM
d=36/100; // Mean Blade ring diameter in m
h=6/100; // blade height at entry in m
cx=180; // Axial velocity in m/s
alpha_1=25;  //  air angle at rotor and stator exit
wdf=0.88; // work-done factor
m=70; //  in kg/s
pr=2; // Pressure Ratio
n_st=0.85; // Stage Efficiency 
n_m=0.967; // Mechanical Efficiency 
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
u=%pi*d*N/60;
n=(gamma-1)/gamma;

// part(a) air angles at rotor and stator entry
cy1=cx*tand(alpha_1);
wy1=u-cy1;
beta1=atand(wy1/cx);
disp("degree",beta1,"air angles at rotor and stator entry are beta1=alpha2= ")
phi=cx/u;

// part(b) mass flow rate of the air
ro1=(p1*1e5)/(R*T1);
A1=%pi*d*h;
m=ro1*cx*A1;
disp("kg/s",m,"(b) mass flow rate of the air is")

// part(c) Determining power required to drive the compressor
beta2=alpha_1;
w=wdf*u*cx*(tand(beta1)-tand(beta2))
P=m*w/n_m;
disp ("kW" ,P/1000,"(c)Power required to drive the compressor is")

// part(d) Loading coefficient
shi=w/(u^2);
disp (shi,"(d)Loading coefficient is")

// part(e) pressure ratio developed by the stage
delTa=w/cp;
delTs=n_st*delTa;
pr=((1+(delTs/T1))^(1/n));
disp(pr,"(e)pressure ratio developed by the stage is")

// part(f) Mach number at the rotor entry
w1=cx/(cosd(beta1));
Mw1=w1/sqrt(gamma*R*T1);
disp(Mw1,"(f)Mach number at the rotor entry is")

