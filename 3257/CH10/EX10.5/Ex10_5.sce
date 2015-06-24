// Analysis of plastic extruder
clc
H = 0.007 // channel depth in m
D = 0.05 // diameter barrel in m
N = 0.833 // revolution / sec
theta= 20 // thread angle in degrees
D_d = 0.005 // screw diameter in m
neeta = 300 // temperature in degree Celsius
l_d = 0.02 // land length in m
l = 1 // melt pumping zone in m
A = 1.96e-5 // area 
printf("\n Example 10.5")
K = %pi*D_d^4/(128*neeta*l_d)
a = (%pi)^2*H*D^2*N*sin(theta*%pi/180)*cos(theta*%pi/180)/2
b = %pi*D*H^3*(sin(theta*%pi/180))^2/(12*neeta*l)
p=a/(K+b)
Q = K*p
v = Q/A
printf("\n Flow rate is %.2e m^3/sec.",Q)
printf("\n Final velocity is %0.2f m/sec.",v)

p = 0 : 1 : 13;
y = 0.256*p; 
z = 2.31 - 0.175e*p     
plot2d(p, y); 
plot(p, z);
xlabel("Pressure (MPa)");
ylabel("Flow Rate, q*1e-5 (m^3/s)")
