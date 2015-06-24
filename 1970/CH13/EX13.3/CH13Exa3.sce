// Scilab code Exa13.3 : : Page-600 (2011)
clc; clear;
N_0_235 = 1;        // Number of uranium 235 per 238 
N_0_238 = 20;        // Number of uranium 238 for one uranium 235    
sigma_a_235 = 683;   // Absorption cross section for uranium 235, barn
sigma_a_238 = 2.73;  // Absorption cross section for uranium 238, barn
sigma_f_235 = 583;   // Fission cross section, barn
sigma_a = (N_0_235*sigma_a_235+N_0_238*sigma_a_238)/(N_0_235+N_0_238); //Asorption cross sec, barn
sigma_f = N_0_235*sigma_f_235/(N_0_235+N_0_238);        // Fisssion cross section 
v = 2.43;
eta = v*sigma_f/sigma_a;    //    Average number of neutron released per absorption
printf("\nThe average number of neutrons released per absorption = %5.3f", eta);

// Result
// The average number of neutrons released per absorption = 1.921 