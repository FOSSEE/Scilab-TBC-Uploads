clc
Psat = 3.973 // Saturation pressure in MPa
vf = 0.0012512 // specific volume of fluid in m^3/kg
vg = 0.05013 // Specific volume of gas in m^3/kg
hf = 1085.36  // Specific enthalpy of fluid in kJ/kg
hfg = 1716.2 // Latent heat of vaporization in kJ/kg
sf = 2.7927 // Specific entropy of fluid in kJ/kgK
sfg = 3.2802 // Entropy change due to vaporization in kJ/kgK
mf = 9 // Mass of liquid in kg
V = 0.04 // Volume of vessel in m^3
// at T = 250
uf = 1080.39 //Specific internal energy in kJ/kg 
ufg = 1522// Change in internal energy due to vaporization in kJ/kg

printf("\n Example 9.5")
Vf = mf*vf // volume of fluid
Vg = V-Vf // volume of gas
mg = Vg/vg // mass of gas
m = mf+mg // mass if mixture
x = mg/m // quality of steam
v = vf+x*(vg-vf) // specific volume of mixture
h = hf+x*hfg // enthalpy of mixture
s = sf+(x*sfg) // entropy of mixture
u = h-Psat*1e6*v*1e-03 // Internal energy of mixture
u_ = uf+x*ufg // Internal energy at 250 degree Celsius
printf("\n The pressure is %f MPa",Psat)
printf("\n The total mass of mixture is %f kg",m)
printf("\n Specific volume is %f m3/kg",v)
printf("\n Enthalpy is is %f kJ/kg",h)
printf("\n The entropy is %f kJ/kg K",s)
printf("\n The internal energy is %f kJ/kg",u)
printf("\n At 250 degree Celsius, internal energy is %fkJ/kg",u_) //The answer provided in the textbook is wrong

//The answers vary due to round off error

