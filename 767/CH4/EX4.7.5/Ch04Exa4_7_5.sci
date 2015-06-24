// Scilab code Exa4.7.5: To determine the number of nuclear fission and decrease in mass during explosion at hiroshima : Page 191 (2011)
E = 200*1.6e-013; // Energy released during fission of one nucleus, J
E_t = 20000*4.18e+09; // Energy released in detonation of 20000 tons of TNT, J
N_f = E_t/E; // Number of fission occured during eplosion, fissions
c = 3e+08; // Velocity of light, m/s
m = E_t/(c)^2*10^6; // Decrease in mass during explosion, mg
m_r = round(m)
printf("\n Number of fissions occured during explosion    = %4.2e fissions \n Decrease in mass during explosion    = %d mg ", N_f, m_r)
// Result  
//         Number of fissions occured during explosion    = 2.61e+024 fissions 
//           Decrease in mass during explosion    = 929 mg