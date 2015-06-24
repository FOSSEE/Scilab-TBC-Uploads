clear;
//clc();

// Example 11.7
// Page: 286
printf("Example-11.7  Page no.-286\n\n");

//***Data***//
R = 8.314;//[J/(ml*K)]
// We find that the water in benzene least squares fit line has the equation 
// log(x_water(benzene-reach phase)) = 4.175-2967.7/T

// equation 11.7 in the book (page 286) is 
// log(x_i_1) = (h_i_0-h_i_average)/(RT) + constant of integration

// Comparing the two equations term by term, we have

// (h_i_0-h_i_average)/(RT) = -2967.7/T
// let us say (h_i_0-h_i_average) = h_mix
// So that 
h_mix = -2967.7*R/1000;//[kJ/mol] Heat of mixing of water-in-benzene

// Now, for benzene-in-water the constant in the above equation is -522.9K, so
h_mix_1 = 522.9*R/1000;//[kJ/mol] Heat of mixing of benzene-in-water

printf(" Heat of mixing of water-in-benzene is given as %f kJ/mol\n",h_mix);
printf(" Heat of mixing of benzene-in-water is given as    %f kJ/mol",h_mix_1);