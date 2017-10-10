clc
m = 0.02 // Mass of steam in Kg
d = 280 // diameter of piston in mm
l = 305 // Stroke length in mm
P1 = 0.6 // Initial pressure in MPa
P2 = 0.12 // Final pressure in MPa
// At 0.6MPa, t = 200 degree
v1 = 0.352 // Specific volume in m^3/kg
h1 = 2850.1 // Specific enthalpy in kJ/kg
vf = 0.0010476 // specific volume of fluid in m^3/kg
vfg = 1.4271 // Specific volume change due to vaporization in m^3/kg
uf = 439.3 // specific enthalpy of fluid
ug = 2512.0 // Specific enthalpy of gas
printf("\n Example 9.12")
V1 = m*v1 // total volume at point 1
Vd = (%pi/4)*(d*1e-3)^2*l*1e-3 // displaced volume
V2 = V1+Vd  // Total volume at point 2
n = log(P1/P2)/log(V2/V1) // polytropic index
W12 = ((P1*V1)-(P2*V2))*1e6/(n-1) // work done
printf("\n The value of n is %f ",n)
printf("\n The work done by the steam is %fkJ ",W12/1e3)
//The answers vary due to round off error
v2 = V2/m // specific volume
x2 = (v2-vf)/vfg  // Steam quality
// At 0.12MPa
u2 = uf + (x2*(ug-uf)) // Internal energy 
u1 = h1-(P1*1e6*v1*1e-03) // Internal energy
Q12 = m*(u2-u1)+ (W12/1e3) // Heat transfer
printf("\n The heat transfer is %fkJ ",Q12)
//The answers vary due to round off error

