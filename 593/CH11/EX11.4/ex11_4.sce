clear;
//clc();

// Example 11.4
// Page: 282
printf("Example-11.4  Page no.-282\n\n");

//***Data***//

Temp = 25;//[C]
// Here we assume benzene to be component 1 and water to be componenet 2
// From table 11.1 given in the book(page 273) 
// The mole fraction of benzene in water is
x_1in2 = 405;//[ppm]
// and the mole fraction of water in benzene is 
x_2in1 = 3000;//[ppm]

// Thus mole fraction of water in water rich phase is
x_water_w = (10^(6)-405)/(10^(6));
x_benzene_w = 1-x_water_w;

// and mole fraction of the benzene in benzene rich phase is
x_benzene_b =(10^(6)-3000)/(10^(6));
x_water_b = 1-x_benzene_b;

// Here both x_water and x_benzene are nearly equal to 1
// Thus assumption used for derivation of the equation 11.4(page 282) are suitable here and the equation is 
// x_i_1 = y_i_1 , where y_i_1 is activity coefficient

// So activity coefficient of benzene in water is
y_benzene = 1/(x_benzene_w);
// and activty coefficient of the water in benzene is
y_water = 1/(x_water_b);
printf(" Activity coefficient of benzene in water is %f\n\n",y_benzene);
printf(" Activity coefficient of water in benzene is %f",y_water);










