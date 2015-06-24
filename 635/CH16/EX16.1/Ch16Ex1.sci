// Scilab Code Ex16.1 Response of Cu to magnetic field: Page-503 (2010)
H = 1e+06;        // Applied magnetic field in copper, A/m
chi = -0.8e-05;    // Magnetic susceptibility of copper
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, henry/metre
M = chi*H;    // Intesity of magnetization in copper, A/m
B = mu_0*(H + M);    // Magnetic flux density in copper, tesla
printf("\nThe magnetization of copper = %d A/m", M);
printf("\nThe magnetic flux density of copper = %5.3f T", B);
// Result 
// The magnetization of copper = -8 A/m
// The magnetic flux density of copper = 1.257 T