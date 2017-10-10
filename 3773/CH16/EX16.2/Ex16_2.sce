//Chapter 16: Practical Design Considerations of Large Aperture Antennas
//Example 16-2.2
clc;

//Variable Initialization
del_phi = 36.0    //rms phase error (degrees)
n_irr = 100.0     //Number of irregularities

//Calculations
max_side = tan(del_phi*%pi/180)**2
max_side = -10*log10(max_side)           //Maximum side-lobe level (dB)
ran_side = (1/n_irr)*tan(del_phi*%pi/180)**2
ran_side = -10*log10(ran_side)            //Random side-lobe level (dB)

//Result
mprintf("The maximum side lobe level from main lobe is %.1f dB", max_side)
mprintf("\nThe random side lobe level from main lobe is %.1f dB", ran_side)
