// scilab Code Exa 6.1 inward flow radial turbine 32000rpm
P=150; // Power Output in kW
N=32e3; // Speed in RPM
d1=20/100; // outer diameter of the impeller in m
d2=8/100; // inner diameter of the impeller in m
V1=387; // Absolute Velocity of gas at entry in m/s
V2=193; // Absolute Velocity of gas at exit in m/s

// part(a) determining mass flow rate
u1=%pi*d1*N/60;
u2=d2*u1/d1;
w_at=u1^2/10e2;
m=P/w_at;
disp ("kg/s" ,m,"(a)mass flow rate is")

// part (b) determining the percentage energy transfer due to the change of radius
n=((u1^2-u2^2)/2e3)/w_at; 
disp ("%",n*100,"(b)percentage energy transfer due to the change of radius is")
