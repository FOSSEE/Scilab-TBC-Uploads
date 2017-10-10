clc
// Given that
r = 2.5 // Static pressure ratio of supercharger 
p1 = 0.6 // Static inlet pressure in bar
t1 = 5 // Static inlet temperature in degree centigrade
A_r = 13 // Air-fuel ratio
m = 0.04 // The rate of fuel consumed by the engine in kg/s
gama= 1.39 // For air-fuel mixture 
cp = 1.005 // Heat capacity for air-fuel mixture in kJ/kgk
n_iso = .84 // Isentropic efficiency of compressor 
v = 120 // Exit velocity from the compressor in m/s
printf("\n Example 19.17\n")
T1 = t1+273
T2s = T1*((r)^((gama-1)/gama))
T2 = T1 +(T2s-T1)/n_iso
m_g = m*(A_r+1)
P = m_g*cp*(T2-T1)
T02 = T2 + (v^2)/(2*cp*1000)
t02 = T02-273
p02 = p1*r*((T02/T2)^(gama/(gama-1)))*100
printf("\n Power required to drive the compressor = %f kW,\n Stagnatio temperature = %f degree centigrade,\n Stagnation pressure = %f kPa",P,t02,p02)
// The answers given in the book vary due to round off error
 
