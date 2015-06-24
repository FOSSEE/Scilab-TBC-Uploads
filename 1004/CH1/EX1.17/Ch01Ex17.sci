// Scilab Code Ex1.17 Relativistic variation of density with velocity: Pg: 26 (2008)
c = 1;    // Speed of light is assumed to be unity for convenience, m/s
v = 0.9*c;    // Speed of moving frame, m/s
rho_0 = 19.3e+03;    // Density of gold in rest frame, kg metre per cube
L0 = 1;    // Actual length is assumed to be unity, m
m0 = 1;    // Rest mass of gold is assumed to be unity, kg
V0 = m0/rho_0;    // Volume of gold in rest frame, metre cube
L = L0*sqrt(1 - (v/c)^2);    // Relativistic Length Contraction Formula, m
y = 1;    // Width of gold block is assumed to be unity, m
z = 1;    // Height of gold block is assumed to be unity, m
V = L*y*z*V0;    // Volume of gold as observed from moving frame, metre cube
m = m0/sqrt(1 - (v/c)^2);    // Mass of gold as observed from moving frame, kg
rho = m/V;    // Density of gold as observed from moving frame, kg per metre cube
printf("\nThe density of gold as observed from moving frame = %5.1fe+003 kg per metre cube", rho/1e+03);
// Result 
// The density of gold as observed from moving frame = 101.6e+003 kg per metre cube 
 