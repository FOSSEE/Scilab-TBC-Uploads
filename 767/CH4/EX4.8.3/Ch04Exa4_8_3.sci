// Scilab code Exa4.8.3: To calculate the energy released and temperature required for fusion of given gases : Page 194 (2011)
// Firstly calculate for B-10
Z_B = 5; // Atomic number of B-10
r_B = 5.17; //  Seperation of two nuclei, fm
K = 1.38e-023; // Boltzmann's constant
F = 1/137; // Fine structure constant
E = 197.5*1.6e-013; // Energy, J
V_c_B = F*Z_B^2*E/r_B; // Coulomb barrier for B-10, J
T_B = 2/3*V_c_B/K; // Temperature required to overcome the barrier for B-10, K
// Now calculate for Mg-24
Z_Mg = 12; // Atomic number of Mg-24
r_Mg = 6.92; //  Seperation of two nuclei, fm
K = 1.38e-023; // Boltzmann's constant
F = 1/137; // Fine structure constant
E = 197.5*1.6e-013; // Energy, J
V_c_Mg = F*Z_Mg^2*E/r_Mg; // Coulomb barrier for Mg-24, J
T_Mg = 2/3*V_c_Mg/K; // Temperature required to overcome the barrier for Mg-24, K
printf("\nFor B-10 \n Energy released   = %4.2e J \n Temperature required   = %4.1e K   \nFor Mg-24  \n Energy released    = %4.2e J \n Temperature required  =  %4.2e K", V_c_B,T_B, V_c_Mg,  T_Mg)
// Result  
 //      For B-10 
 // Energy released   = 1.12e-012 J 
 // Temperature required   = 5.4e+010 K   
// For Mg-24  
//  Energy released    = 4.80e-012 J 
//  Temperature required  =  2.32e+011 K  
