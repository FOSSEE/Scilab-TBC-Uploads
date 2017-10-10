clc
x1 = 1 // Steam quality in first vessel
x2 = 0.8 // Steam quality in second vessel
// at 0.2MPa
vg = 0.8857 // Specific volume of gas in m^3/kg
h1 =  2706.7 // Enthalpy in first vessel  in kJ/kg
v1 = vg // Specific volume of gas in first vessel in m^3/kg
hg = h1 //  Enthalpy in first vessel  1 in kJ/kg
m1 = 5  // mass in first vessel in kg
V1 = m1*v1 // Volume of first vessel in m^3
// at 0.5MPa
m2 = 10 // mass in second vessel in kg
hf = 640.23 // Enthalpy in second vessel  in kJ/kg
hfg = 2108.5 // Latent heat of vaporization in kJ/kg
vf = 0.001093 // Specific volume of fluid in second vessel in m^3/kg
vfg = 0.3749 // Change in specific volume in second vessel due to evaporation of gas in m^3/kg
v2 = vf+(x2*vfg) // Specific volume of gas in second vessel
V2 = m2*v2 // Volume of second vessel in m^3
//
Vm = V1+V2 // Total volume 
m = m1+m2 // Total mass
vm = Vm/m // net specific volume
u1 = h1 // Internal energy
h2 = hf+(x2*hfg) // Enthalpy calculation
u2 = h2 // Internal energy calculation
m3 = m // Net mass calculation
h3 = ((m1*u1)+(m2*u2))/m3 // Resultant enthalpy calculation
u3 = h3 // Resultant internal energy calculation
v3 = vm // resultant specific volume calculation
// From Mollier diagram
x3 = 0.870  // Steam quality 
p3 = 3.5 // Pressure in MPa
s3 = 6.29 // Entropy at state 3  in kJ/kgK
s1 = 7.1271 // Entropy at state 1 in kJ/kgK
sf = 1.8607  // Entropy in liquid state  in kJ/kgK
sfg = 4.9606 // Entropy change due to vaporization in kJ/kgK
s2 = sf+(x2*sfg) // Entropy calculation
E = m3*s3-((m1*s1)+(m2*s2)) // Entropy change during process

printf("\n Example 9.13")
printf("\n Final pressure is %f bar",p3)
printf("\n Steam quality is %f ",x3)
printf("\n Entropy change during the process is %f kJ/K",E)
//The answers vary due to round off error

