clear;
//clc();

// Example 8.4
// Page: 177
printf("Example-8.4  Page no.-177\n\n");

//***Data***//
n_water = 80;//[mol]
n_butanol = 20;//[mol]
n_total = n_water+n_butanol;//[mol]
// Here from the figure 8.12 given in the book we can find the mole fraction of the water in each phase 
// Let x_feed be the moles of water(species a) fed/total moles fed.
x_feed = 0.8;
x_a_1 = 0.65;
x_a_2 = 0.98;
// By material balence for water
// n_total*x_feed = n_1*x_a_1+n_2*x_a_2,   
// here n_1 and n_2 are no. of mole in each phase 
// So (n_1+n_2) = n_total
// Thus
// n_total*x_feed = n_1*x_a_1+(n_total-n_1)*x_a_2
// solving further
// n_1/n_total = (x_feed-x_a_2)/(x_a_1-x_a_2)
// and hence
n_1 = (x_feed-x_a_2)/(x_a_1-x_a_2)*n_total;//[mol]
n_2 = (n_total-n_1);//[mol]
// so
n_a_1 = 0.65*n_1;//[mol]
// and
n_a_2 = 0.98*n_2;//[mol]
printf(" Total moles of water present in the first phase is  %f mol\n",n_a_1);
printf(" Total moles of water present in the second phase is %f mol",n_a_2);
