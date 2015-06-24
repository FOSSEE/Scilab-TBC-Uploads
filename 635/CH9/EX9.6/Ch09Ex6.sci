// Scilab Code Ex9.6 Heat transference into rock salt at low temperature: Page-313(2010)
A = 464;    // Atomic specific heat of rock salt, cal g/mol/kelvin
theta_D = 281;    // Debye temperature of rock salt, K
delta_T = 10;    // Rise in temperature in each class interval, K
// Define a function which returns lattice specific heat at constant volume
function[C_vl] = lattice_SH(T)
    C_vl = A*(T/theta_D)^3;
endfunction
Q = 0;    // Initialize heat accumulator to zero, cal
for t = 10:10:40
    mean_temp = (t + (t + 10))/2;    // Calculate mean temperature of each class interval, K 
    Q = Q + 2*delta_T*lattice_SH(mean_temp);    // Acuumulate heat for each step
end
printf("\nThe amount of heat required to raise the temperature of 2 gmol of Rock salt from 10K to 50K = %5.2f cal", Q);
// Result 
// The amount of heat required to raise the temperature of 2 gmol of Rock salt from 10K to 50K = 63.99 cal