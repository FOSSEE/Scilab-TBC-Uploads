// Scilab code Exa9.16 : : Page-398 (2011)
clc; clear;
h_cut_sqr_upon_2f = 0.01667;        // A constant value, joule square per sec cube
for I = 4:6
    if I == 4 then
        E = I*(I+1)*h_cut_sqr_upon_2f;
       printf("\nThe energy for 4+ tungsten state = %5.3f MeV", E);
    elseif I == 6 then
        E = I*(I+1)*h_cut_sqr_upon_2f; 
      printf("\nThe energy for 6+ tungsten state = %5.3f MeV", E); 
    end
end

// Result
// The energy for 4+ tungsten state = 0.333 MeV
// The energy for 6+ tungsten state = 0.700 MeV  