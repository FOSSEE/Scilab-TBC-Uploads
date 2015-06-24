// Scilab code Exa12.4 : : Page-574 (2011)
clc; clear; 
zeta = 0.209;        // Moderated assembly
E_change = 100/1;        // Change in energy of the neutron
E_thermal = 0.025;        // Thermal energy of the neutron, electron volts
E_n = 2*10^6;            // Energy of the neutron, electron volts
n = 1/zeta*log(E_change);        // Number of collisions of neutrons to loss 99 percent of their energies 
n_thermal = 1/zeta*log(E_n/E_thermal);        // Number of collisions of neutrons to reach thermal energies
printf("\nThe number of collisions  of neutrons to loss 99 percent of their energies = %d \nThe number of collisions of neutrons to reach thermal energies = %d",n,n_thermal)

// Result
// The number of collisions  of neutrons to loss 99 percent of their energies = 22 
// The number of collisions of neutrons to reach thermal energies = 87 
 