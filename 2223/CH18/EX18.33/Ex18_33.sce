// scilab Code Exa 18.33 Vertical Axis Crossflow Wind turbine

c1=24/3.6; // wind speed in m/s
c2=30/3.6; // rotor speed in m/s
m1=25; // mass flow rate of air at wind side in kg/s
m2=31.25; // rotor  air mass flow rate in kg/s
d1=3; // rotor outer diameter in m
d2=2; // rotor inner diameter in m
gamma=1.4;
alpha=37;  //  air angle at rotor entry(from tangential direction)
c(1)=c1;
c(2)=c2;
m(1)=m1;
m(2)=m2;

for i=1:2
c_theta1=c(i)*cosd(alpha);
u1=c_theta1/2;
u2=u1*d2/d1;
disp("kmph",c(i)*3.6,"for speed=")

// part(a)optimum rotor speed
N=60*u1/(%pi*d1);
disp("rpm",N,"(a)optimum rotor speed is")

// part(b)blade to wind speed ratio
sigma=u1/c(i);
disp(sigma,"blade to wind speed ratio is")

// part(c)hydraulic powers and efficiencies
Ph=m(i)*((2*(u1^2))+(u2^2));
disp("Watts",Ph,"(c)hydraulic power is")
n_h=((2*(u1^2))+(u2^2))/(0.5*(c(i)^2));
disp("%",n_h*1e2,"and hydraulic efficiency is")
end
