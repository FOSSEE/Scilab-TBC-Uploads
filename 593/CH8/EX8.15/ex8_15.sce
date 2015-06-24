clear;
//clc();

// Example 8.15
// Page: 199
printf("Example-8.15  Page no.-199\n\n");

//***Data***//

n_sugar = 1;//[mol]
n_water = 1000/18;//[mol]
x_sugar = n_sugar/(n_sugar+n_water);
x_water = n_water/(n_sugar+n_water);
// At 100C we have 
p_water = 1;//[atm]
p_sugar = 0;//[atm]
// and the relation
P = x_water*p_water+x_sugar*p_sugar;//[atm]
// The situation is sketched in the figure 8.21 in the book[page 199].
// Now for the second part of the question
// To find the temperature at which the solution will boil, we see on the figure that we must raise the temperature to increase p_i to a value high enough  that the total pressure P_1 = 1atm, with x_water calculated above.
P_1 = 1;//[atm]
p_water = P_1/x_water;//[atm]
// Interpolating in the steam table[12] reported in the book, we find 
T = 100.51;//[C]
// We may restate this that the boiling-point elevation caused by this dissolved, nonvolatile solute is
T_eb = T-100;//[C]
printf("Vapour pressure of this solution at the 100C is              %f atm\n",P);
printf(" The temperature at which this solution will boil at 1 atm is %f C",T);