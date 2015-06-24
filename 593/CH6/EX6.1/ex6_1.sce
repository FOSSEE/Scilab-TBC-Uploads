clear;
//clc();

// Example 6.1
// Page: 108
printf("Example-6.1  Page no.-108\n\n");

//***Data***//
T = 20;//[C]
m_1 = 0;//[molal]
m_2 = 1;//[molal]
// The data given in the figure 6.2 , as reported in book, can be repersented with excellent accuracy by a simple data fitting equation
//V = 1.0019+0.054668*m-0.000418*m^(2);
// Where 'V' is( solution volume, liters per 1000g of water ) and 'm' is the molality of ethanol in water
//The partial molal volume is obtained by differentiating the expression of the 'V' with respect to 'm'
// v_ethanol = dV/dm = 0.054668-2*0.000418*m
// So that at zero molality 
m = 0;//[molal]
// the partial molal volume is 
v_1 = 0.054668-2*0.000418*m;//[L/mol]
// and at
m = 1;//[molal]
v_2 = 0.054668-2*0.000418*m;//[L/mol]
v_1 = v_1*1000;//[cm^(3)/mol]
v_2 = v_2*1000;//[cm^(3)/mol]
printf("Partial molal volume of ethanol in water at zero molality is  %f cm^(3)/mol\n",v_1);
printf(" Partial molal volume of ethanol in water at unity molality is %f cm^(3)/mol",v_2);
