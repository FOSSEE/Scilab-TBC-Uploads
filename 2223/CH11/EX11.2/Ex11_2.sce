// scilab Code Exa 11.2 Calculation on an axial compressor stage 

T1=314;  // in Kelvin
p1=768; //  Initial Pressure in mm Hg
N=18e3; // rotor Speed in RPM
d=50/100; // Mean Blade ring diameter in m
u=100; // peripheral speed in m/s
h=6/100; // blade height at entry in m
beta1=51;
beta2=9;
alpha_1=7;  //  air angle at rotor and stator exit
wdf=0.95; // work-done factor
m=25; //  in kg/s
n_st=0.88; // Stage Efficiency 
n_m=0.92; // Mechanical Efficiency 
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
gamma=1.4;
n=(gamma-1)/gamma;

// part(a) air angle at stator entry
cx=u/(tand(alpha_1)+tand(beta1));
disp(cx,"cx=")
alpha2=atand(tand(alpha_1)+tand(beta1)-tand(beta2))
disp("degree",alpha2,"air angle at stator entry is alpha2= ")

// part(b) blade height at entry and hub-tip diameter ratio
ro1=(p1/750*1e5)/(R*T1);
h1=m/(ro1*cx*%pi*d);
disp("cm",h1*1e2,"(b)blade height at entry is")
dh=d-h1;
disp(dh,"dh=")
dt=d+h1;
disp(dt,"dt=")
disp(dh/dt,"and hub-tip diameter ratio is")

// part(c) stage Loading coefficient
w=wdf*u*cx*(tand(beta1)-tand(beta2));
shi=w/(u^2);
disp (shi,"(d)Loading coefficient is")

// part(d) stage pressure ratio
delTa=w/cp;
delTs=n_st*delTa;
pr=((1+(delTs/T1))^(1/n));
disp(pr,"(e)pressure ratio developed by the stage is")

// part(e) Determining power required to drive the compressor
P=m*w/n_m;
disp ("kW" ,P/1000,"(e)Power required to drive the compressor is")
