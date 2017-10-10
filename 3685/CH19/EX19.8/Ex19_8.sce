clc
// Given that
V = 4 // Volume flow rate in m^3/min
p1 = 1.013 // Pressure in bar
t1 = 15 // Temperature in degree centigrade
N = 250 // Speed in RPM
p4 = 80// Delivery pressure in bar
v = 3 //Speed of piston in m/sec
n_mech = .75 // Mechanical efficiency 
n_vol = .8 // Volumetric efficiency
n = 1.25 // Polytropic index
printf("\n Example 19.8\n")
T1 = t1+273
p2 = sqrt(p1*p4)
W = (2*n/(n-1))*(p1*100/n_mech)*(V/60)*((p2/p1)^((n-1)/n) - 1)
L = v*60/(N*2)
Vs = V/N
D_LP = sqrt(Vs*V/(%pi*L*n_vol))
D_HP = D_LP*sqrt(p1/p2)
printf("\n Minimum power required by the compressure is %f kW,\n Bore of the compressure in low pressure side is %f cm,\n Bore of the compressure in high pressure side is %f cm,\n Stroke of the compressure is %d cm",W,D_LP*100,D_HP*100,L*100)
//The answers vary due to round off error

