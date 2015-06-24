d = 18 ; // inner idameter of the hemisphere in inch
t = 1/4 ; // thickness of the hemisphere in inch
// Part (a)
sa = 14000 ; // Allowable tensile stress in Psi
Pa = (2*t*sa)/(d/2); // Maximum permissible air pressure in Psi
disp("psi",Pa," Maximum permissible air pressure in the tank (Part(a)) is")
// Part (b)
sb = 6000 ; // Allowable shear stress in Psi
Pb = (4*t*sb)/(d/2) ; // Maximum permissible air pressure in Psi
disp("psi",Pb," Maximum permissible air pressure in the tank (Part(b)) is")
// Part (c)
e = 0.0003 ; // Allowable Strain in Outer sufrface of the hemisphere
E = 29e06 ; // Modulus of epasticity of the steel in Psi
v = 0.28 ; // Poissions's ratio of the steel
Pc = (2*t*E*e)/((d/2)*(1-v)) ; // Maximum permissible air pressure in Psi
disp("psi",Pc," Maximum permissible air pressure in the tank (Part(c)) is")
// Part (d)
Tf = 8100 ; // failure tensile load in lb/in 
n = 2.5 ; // Required factor of safetty against failure of the weld
Ta = Tf / n ; // Allowable load in ld/in 
sd = (Ta*(1))/(t*(1)); // Allowable tensile stress in Psi
Pd = (2*t*sd)/(d/2); // Maximum permissible air pressure in Psi
disp("psi",Pd," Maximum permissible air pressure in the tank (Part(d)) is")
// Part (e)
Pallow = Pb ; // Because Shear stress in the wall governs allowable pressure inside the tank
disp("Because Shear stress in the wall governs allowable pressure inside the tank","psi",Pallow," Maximum permissible air pressure in the tank (Part(e)) is")

