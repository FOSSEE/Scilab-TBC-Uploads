clc
// Given that
m = 3 // Mass flow rate in kg/min
p1 = 1 // Initial pressure in bar
T1 = 300 // Initial temperature in K
p3 = 6 // Pressure after compression in bar
p5 = 15 // Maximum pressure in bar
N = 300 // Rpm of compressure
n = 1.3 // Index of compression and expansion 
r = 1.5 // Stroke to bore ratio
R = 287 // Gas constant of air
t = 15 // Temperature in degree centigrade
printf("\n Example 19.4\n")
T = t+273
Wc = (n/(n-1))*(m/60)*(R*(1e-3)*T1)*(((p3/p1)^((n-1)/n))-1)
r1 = (p5/p1)^(1/n)// Where r1 = V1/Vc
r2 = r1-1 // Where r2 = Vs/Vc
r3 = (p3/p1)^(1/n)
n_vol = (r1-r3)*(T/T1)/r2
V = m*R*T/(2*(1e5)*N)
Vs = V/n_vol
d = (Vs*4/(%pi*r))^(1/3)
l = r*d
printf("\n Power input is %f kW, \n Volumetric efficiency is %f percent, \n Bore of the cylinder is %f m, \n Stroke of the cylinder is %f m",Wc,n_vol*100,d,l)
//The answers vary due to round off error

