clc
// Given that
d = 15 // Diameter in cm
l = 18 // Stroke in cm
C = 0.04 // Ratio of clearance volume and sweft volume
p1 = 1 // Pressure in bar
t1 = 25 // Temperature in degree centigrade
p2 = 8// Pressure in bar
N = 1200 // Rpm of compressure 
W = 18 // Actual power input in kW
m = 4 // Mass flow rate in kg/min
R = 0.287
printf("\n Example 19.5\n")
T1 = t1+273
v = R*T1/(p1*100)
V = m*v
Vs = (%pi/4)*((d*(1e-2))^2)*(l*1e-2)*N
n_vol = V/Vs
n = (log(p2/p1))/(log((1+C-n_vol)/C))
// The value of n given in the example is wrong
n = 1.573
T2 = T1*(p2/p1)^((n-1)/n)
Wc = (n/(n-1))*(m*R/60)*(T2-T1)
n_mech = Wc/W
W_isothermal = m*R*T1*log(p2/p1)/60
n_iso = W_isothermal/W
printf("\n Power required to drive the unit is %f kW,\n Isothermal efficiency is %f percent,\n Mechanical efficiency is %f percent",Wc,n_iso*100,n_mech*100)
//The answers vary due to round off error

