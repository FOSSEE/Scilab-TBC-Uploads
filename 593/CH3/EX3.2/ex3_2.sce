clear;
//clc();

// Example 3.2
// Page: 53
printf("Example-3.2  Page no.-53\n\n");

//***Data***//
T = 20;//[C]
P = 1;//[atm]
// From previous example i.e. example 3.1
y_water = 0.023;
//so that 
//y = y_N2+y_O2
y = 1-y_water;
// The oxygen is 0.21 mole fraction of this mix, so that
y_O2 = y*0.21;
// It is reported in the book in table A.3 (page 419) that Henry's law cinstant for oxygen in water at 20C is 
H_O2 = 40100;//[atm]
// From Henry's law, we have 
// y_i = x_i*H_i/P
// rearranging
// x_i = y_i*P/H_i
// so 
x_O2 = y_O2*P/H_O2;
// By the same logic we find that
y_N2 = y*0.79;
//and Henry's law constant for nitrogen in water at 20C is
H_N2 = 80400;//[atm]
// hence 
x_N2 = y_N2*P/H_N2;
// Now expressing the dissolved oxygen concentration in terms of the volume of the oxygen at STP viz. taken as 1 atm and 20C
// c = (concentration of dissolved oxygen in equilibrium with air at 1 atm and 20C)
c = x_O2*998.2/18;//[(mole O2)/(L solution)]
// V = (volume of O2, STP)/(L solution)
V = c*24.06;//[(L O2, STP)/(L solution)]
V = V*1000;//[(ml O2, STP)/(L solution)]
printf("Concentration of oxygen dissolved in water at equilibrium is %f (mL O2, STP)/(L solution)",V);



