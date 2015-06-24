// Scilab Code Ex8.13: Page-176 (2010)
c = 3e+008;    // Speed of light in vacuum, m/s
E = 4.5e+017;    // Total energy of object, J
px = 3.8e+008;    // X-component of momentum, kg-m/s
py = 3e+008;    // Y-component of momentum, kg-m/s
pz = 3e+008;    // Z-component of momentum, kg-m/s
p = sqrt(px^2+py^2+px^2);    // Total momentum of the object, kg-m/s
// From Relativistic mass-energy relation
// E^2 = c^2*p^2 + m0^2*c^4, solving for m0
m0 = sqrt(E^2/c^4 - p^2/c^2);    // Rest mass of the body, kg
printf("\nThe rest mass of the body = %4.2f kg", m0);

// Result
// The rest mass of the body = 4.56 kg 