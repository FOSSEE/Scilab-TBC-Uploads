
// ELECTRICAL MACHINES
// R.K.Srivartava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 2 : FORCES IN AN ELECTROMAGNETIC SYSTEMS

// EXAMPLE : 2.3 

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

F = 35;                // Total MMF in Amphere-Turns
Lc = 0.1;              // Inductance of The Material "c" in Henry 
a = 0.001;             // Area of the all Materials "a,b,c" in Metre-Square


// CALCULATIONS

Hc = F/Lc;              // Field Intensity in Amphere-Turns/Meter (Given that entire MMf apperas on Material "c" Because of the highest reluctance about 45000 MKS unit From Example 2.2)
Bc = 0.65;              // Flux density of material "c" in in Telsa obtained from the Standard B-H curve
phi = Bc*a;             // Flux in the core in Weber
Ba = Bc;                // Flux density of material "a" in in Telsa Same because Area of Cross Section is Same
Bb = Bc;                // Flux density of material "b" in in Telsabecause Area of Cross Section is Same


// DISPLAY RESULTS

disp("EXAMPLE : 2.3 : SOLUTION :-") ;
printf("\n (a) Flux in the core , phi = %.5f Wb \n ",phi);
printf("\n (b) Flux density of material a,b,c , Ba = Bb = Bc %.2f T \n",Ba);
