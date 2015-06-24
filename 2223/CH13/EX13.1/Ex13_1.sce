// scilab Code Exa 13.1 ninety degree IFR turbine
t=650; // in degree C
T01=t+273; // in Kelvin
p3=1; //  Exit Pressure in bar
gamma=1.4;
sigma=0.66; // blade-to-isentropic speed ratio
N=16e3; // rotor Speed in RPM
b2=5/100; // blade height at entry in m
alpha_2=20;  //  air angle at nozzle exit
d_r=0.45; // rotor diameter ratio(d3/d2)
p01_3=3.5; // total-to-static Pressure Ratio(p01/p3) 
n_N=0.95; // Nozzle Efficiency 
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
n=(gamma-1)/gamma;

// part(a) the rotor diameter
c_0=sqrt(2*cp*T01*(1-(p01_3^(-n))))
u_2=sigma*c_0;
d2=60*u_2/(%pi*N);
disp("cm",d2*1e2,"(a)the rotor diameter is")

// part(b) air angle at rotor blade exit
d3=d2*d_r;
c_r2=u_2*tand(alpha_2);
u3=%pi*d3*N/60;
beta3=atand(c_r2/u3);
disp("degree",beta3,"(b) air angle at rotor blade exit beta3=")

// part(c) mass flow rate
T03=T01-((u_2^2)/cp);
T3=T03-((c_r2^2)/(2*cp));
T2=T3+((0.5*(u_2^2))/cp);
c2=u_2/(cosd(alpha_2));
p01_2=(1-(((0.5*(c2^2))/(cp*n_N))/T01))^(-1/n);
p01=p3*p01_3;
p2=p01/p01_2;
ro2=(p2*1e5)/(R*T2);
m=ro2*c_r2*%pi*d2*b2;
disp("kg/s",m,"(c) mass flow rate is")

// part(d) hub and tip diameters at the rotor exit
ro3=(p3*1e5)/(R*T3);
b3=m/(ro3*c_r2*%pi*d3);
dh=d3-b3;
disp("cm",dh*1e2,"(d)hub diameter at the rotor exit is")
dt=d3+b3;
disp("cm",dt*1e2,"(d)tip diameter at the rotor exit is")

// part(e) Determining the power developed
P=m*(u_2^2);
disp ("kW",P/1000,"(e)Power developed is")

// part(f) the total-to-static Efficiency of the stage
n_ts=(u_2^2)/(cp*T01*(1-((p3/p01)^n)));
disp("%",n_ts*1e2,"(f)the total-to-static Efficiency of the stage is")
