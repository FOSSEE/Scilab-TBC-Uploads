clear;
//clc();

// Example 11.2
// Page: 273
printf("Example-11.2  Page no.-273\n\n");

//***Data***//
m_benzene = 1000;//[lbm]
M_benzene = 78;//[lbm/lbmol]
// The total moles benzene are 
 n_benzene = m_benzene/M_benzene;//[lbmol]
 // To saturate the water with benzene 
 // the mole fraction of the benzene in the water will be 
 x_benzene = 0.000405;
 // and 
// n_benzene = x_benzene*n_T;
 // in this case n_benzene << n_water, so n_T = n_water
 // Thus
 //n_benzene = x_benzene*n_water;
n_water = n_benzene/x_benzene;//[lbmol]
m_water = n_water*18;//[lbm] 
 printf("The amount of the ground water that will make a saturated solution will be %e lbm",m_water);