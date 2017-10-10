clc
// Given that
d = 40 // Diameter in cm
l = 50 // Stroke in cm
D = 5 // Piston rod diameter in cm
C = 0.04 // Ratio of clearance volume and sweft volume
p1 = 1 // Pressure in bar
t1 = 15 // Temperature in degree centigrade
p2 = 7.5// Pressure in bar
N = 300 // Rpm of compressure 
n_vol = 0.8 // Volumetric efficiency
n_mech = 0.95 // Mechanical efficiency
n_iso = .7 // Isothermal efficiency
R = 0.287
printf("\n Example 19.6\n")
Vs = (%pi/4)*((d*(1e-2))^2)*(l*(1e-2))
Vs_ = (%pi/4)*(((d*(1e-2))^2)-(D*(1e-2))^2)*(l*1e-2)
Vs_min = (Vs+Vs_)*2*N
V1 = Vs_min*n_vol
W_iso = p1*V1*(log(p2/p1))
Win = W_iso/n_iso
Wc = Win/n_mech
printf("\n Power required to drive the compressure is %f kW",Wc)
//The answers vary due to round off error

