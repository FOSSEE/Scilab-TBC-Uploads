clear;
//clc();

// Example 7.4
// Page: 145
printf("Example-7.4  Page no.-145\n\n");

//***Data***//

T = 78.15;//[C]
P = 1.0;//[atm]
// Here we name ethanol as the species 'a', and water as the species 'b', and name the vapor as phase 1 and the liquid as the phase 2. 
// Thus vapor pressures of the pure species at the given temperature are
p_a_0 = 0.993;//[atm] Pure ethanol vapor pressure at 78.15C
p_b_0 = 0.434;//[atm] Pure water vapor pressure at 78.15C

// Also composition of the azeotrope is
x_a = 0.8943;// Amount of ethanol in the liquid phase 
x_b = 0.1057;// Amount of water in liquid phase 

// Also, for an azeotrope mixture
y_a = x_a;// Amount of ethanol in vapor phase 
y_b = x_b;// Amount of water in the vapor phase 

// For ideal gas , fugacity is equal to the total pressure of the system, i.e.
// f_i_0 = P  , (where P is the system pressure)
// For pure liquid system, fugacity of a species is independent of the total pressure of the system and is equal to the pure species vapor pressure at  this temprature, i.e.
// f_i_0 = p_i

// Now, fugacity of each species in gaseous phase and liquid phase will be equal 
// so, writing the expression for both liquid and gas phase fugacity and equatinh them, we have
// f_a_2 = f_a_1 = (y*Y*P)_a_1 = (x*Y*p)_a_2..........................................(1)
// f_b_2 = f_b_1 = (y*Y*P)_b_1 = (x*Y*p)_b_2..........................................(2)

// We observe that this system has four values of 'Y', one for each of the two species in each of two phases.
// Mixtures of the ideal gases are all ideal solutions and the value of 'Y' for all the species in ideal gas phase are unity, so for above two equations
Y_a_1 = 1.0;
Y_b_1 = 1.0;

// Now putting the values these gaseous phase 'Y's in their respective equations 1 and 2, and solving for the liquid phase 'Y's, we have
Y_a_2 = ((y_a*P)/(x_a*p_a_0));
Y_b_2 = ((y_b*P)/(x_b*p_b_0));

// From equations 1 and 2, the fugacity of each species in each phase is given by
f_a_1 = (y_a*Y_a_1*P);//[atm]
f_b_1 = (y_b*Y_b_1*P);//[atm]
// and from the definition we have 
f_a_2 = f_a_1;//[atm]
f_b_2 = f_b_1;//[atm]

// As we have defined above about the pure species fugacity, so 
// For vapor phase
f_a_1_0 = P;//[atm]
f_b_1_0 = P;//[atm]

// For liquid phase
f_a_2_0 = p_a_0;//[atm]
f_b_2_0 = p_b_0;//[atm]

printf(" The results are summarized in the following table:\n\n \tPhase\t\t\t\t Etahnol,i=a\t\t\t\t Water,i=b\n\n");
printf(" \tVAPOR, PHASE 1\n");
printf("  \t  f_i_1, atm   \t\t\t %f \t\t\t\t %f\n",f_a_1,f_b_1);
printf("  \t  f_i_1_0, atm \t\t\t %f \t\t\t\t %f\n",f_a_1_0,f_b_1_0);
printf("  \t  Y_i_1(assumed)  \t\t %f \t\t\t\t %f\n\n",Y_a_1,Y_b_1);
printf(" \tLIQUID, PHASE 2\n");
printf("  \t  f_i_2, atm   \t\t\t %f \t\t\t\t %f\n",f_a_2,f_b_2);
printf("  \t  f_i_2_0, atm \t\t\t %f \t\t\t\t %f\n",f_a_2_0,f_b_2_0);
printf("  \t  Y_i_2(assumed)  \t\t %f \t\t\t\t %f\n",Y_a_2,Y_b_2);
