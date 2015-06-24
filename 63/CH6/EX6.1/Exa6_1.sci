//Determine (a) Image frequency and its rejection ratio at 1000 kHz (b) Image frequency and its rejection ratio at 25 Mhz

fa = 1000 + 2*455;
rho_a = fa/1000 - 1000/fa;
alpha_a = sqrt(1 + 100^2 * rho_a^2);

fb = 25 + 2*0.455;
rho_b = fb/25 - 25/fb;
alpha_b = sqrt(1 + 100^2 * rho_b^2);

disp(rho_a, 'Image frequency at 1000 kHz (in Hz)')
disp(alpha_a, 'Rejection Ratio at 1000 kHz')

disp(rho_b, 'Image frequency at 25 MHz (in Hz)')
disp(alpha_b, 'Rejection Ratio at 25 MHz')