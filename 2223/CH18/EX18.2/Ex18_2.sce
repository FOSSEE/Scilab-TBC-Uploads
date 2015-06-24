// scilab Code Exa 18.2 Steam Turbine nozzle 

t1=550;  // Entry Temperature in Kelvin
p1=170; // Inlet Pressure in bar
p2=120.7; // Exit Pressure in bar
d=1; // Mean Blade ring diameter in m
alpha_2=70;  // nozzle angle in degree
gamma_g=1.3; // for superheated steam
R=0.5*1e3; // in J/kgK
m=280; // in kg/s

// part(a) exit velocity c2 of steam
h1=3440; // from superheated steam tables at p1 and t1
h2=3350; // at p2
t2=503; // at p2 in degree C
v_s2=0.0268; // Specific Volume at p2 in m3/kg
c_2=sqrt((h1-h2)*1e3/0.5);
disp("m/s",c_2,"(a)the nozzle exit velocity is")

// part(b)
T2=t2+273;
a2=sqrt(gamma_g*R*T2);
M2=c_2/a2;
disp(M2,"(b)and the exit Mach number is")

// part(c)
cx=c_2*cosd(alpha_2);
h=m*v_s2/(%pi*cx*d);
disp("cm",h*1e2,"(c)nozzle blade height at exit is")

T2s=0.87*(t1+273); // T2s/T1=0.87 from gas tables
p2s=0.546*p1; // p2s/p1=0.546 from gas tables
vs_s=0.031; // from steam tables
a_s=sqrt(gamma_g*R*T2s);
disp("m/s",a_s,"the corresponding nozzle exit velocity is")
cx_s=a_s*cosd(alpha_2);
m_max=cx_s*%pi*d*h/(vs_s);
disp("kg/s",m_max,"the maximum possible mass flow rate is")
