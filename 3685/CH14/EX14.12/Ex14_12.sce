clear
clc
// Given that
L = 60 // Cooling load in kW
p = 1 // Pressure in bar
t = 20 // Temperature in degree celsius
v = 900 // Speed of aircraft in km/h
p1 = 0.35 // Pressure in bar
T1 = 255 // Temperature in K
nd = .85 // Diffuser efficiency 
rp = 6 // Pressure ratio of compressor
nc = .85 // Copressor efficiency 
E = 0.9 // Effectiveness of air cooler
nt = 0.88 // Turbine efficiency 
p_ = 0.08 // Pressure drop in air cooler in bar
p5 =  1.08 // Pressure in bar
cp = 1.005 // Heat capacity of air at constant pressure in kJ/kgK
gama = 1.4 // Ratio of heat capacities of air
printf("\n Example 14.12\n")
V = v*(5/18)
T2_ = T1 + (V^2)/(2*cp*1000)
T2 = T2_
p2_ = p1*((T2_/T1)^((gama/(gama-1))))
p2 = p1 + nd*(p2_-p1)
p3 = rp*p2
T3_ = T2*((p3/p2)^((gama-1)/gama))
T3 = T2 + (T3_-T2)/nc
P = cp*(T3-T2)
p4 = p3 - p_
T4 = T3 - E*(T3-T2)
T5_ = T4/((p4/p5)^(.286))
T5 = T4 - (T4-T5_)/nt
RE = cp*(t+273 - T5)
m = L/51.5
Pr = m*P
COP = L/Pr
printf("\n Mass flow rate of air flowing through the cooling system is %f kg/s",m)
printf("\n COP is %f ",COP)
//The answers vary due to round off error
