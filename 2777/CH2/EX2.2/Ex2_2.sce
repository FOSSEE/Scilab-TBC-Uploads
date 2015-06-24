
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 2 : FORCES IN AN ELECTROMAGNETIC SYSTEMS

// EXAMPLE : 2.2 

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N = 100;               // Number of turns
La = 0.3;              // Mean arc length of material "a" is a Nickel-iron alloy in Metre
Lb = 0.2;              // Mean arc length of material "b" is a Steel in Metre
Lc = 0.1;              // Mean arc length of material "c" is a Cast Steel in Metre
a = 0.001;             // Area of the all Materials "a,b,c" in Metre-Square
phi = 6*10^-4;         // Magnetic Flux in Weber
mue_0 = 4*%pi*10^ -7;  // Permeability of the air in Henry/Meter


// CALCULATIONS

B = phi/a;                      // Flux Density in Telsa (Here Flux Density same for all the Materials "a,b,c" because Area of Cross Section is Same)
Ha = 10;                        // Fileld Intensity in Amphere-Turn/Meter Correspounding to Flux density (B) of material "a" obtained from the Standard B-H curve
Hb = 77;                        // Fileld Intensity in Amphere-Turn/Meter Correspounding to Flux density (B) of material "b" obtained from the Standard B-H curve
Hc = 270;                       // Fileld Intensity in Amphere-Turn/Meter Correspounding to Flux density (B) of material "c" obtained from the Standard B-H curve
F = (Ha*La)+(Hb*Lb)+(Hc*Lc);    // The Total MMF Required in Amphere-Turns
I = F/N;                        // Current flowing through the Coil in Amphere
mue_r_a = B/(Ha*mue_0);        // Relatative permeability of the Material "a"
mue_r_b = B/(Hb*mue_0);        // Relatative permeability of the Material "a"
mue_r_c = B/(Hc*mue_0);        // Relatative permeability of the Material "a"
Ra = (Ha*La)/phi;              // Relucatnce of the Material "a" in MKS unit
Rb = (Hb*Lb)/phi;              // Relucatnce of the Material "b" in MKS unit
Rc = (Hc*Lc)/phi;              // Relucatnce of the Material "c" in MKS unit
L = (N*phi)/I;                 // Inductance of the Coil in Henry


// DISPLAY RESULTS

disp("EXAMPLE : 2.2 : SOLUTION :-") ;
printf("\n (a)   The Total MMF , F = %.1f At \n ",F);
printf("\n (b)   Current flowing through the Coil , I = %.3f A \n",I);
printf("\n (c.1) Relatative permeability of the Material a, mue_r_a = %.f \n ",mue_r_a);
printf("\n (c.2) Relatative permeability of the Material b, mue_r_b = %.f \n ",mue_r_b);
printf("\n (c.3) Relatative permeability of the Material c, mue_r_c = %.f \n ",mue_r_c);
printf("\n (c.4) Relucatnce of the Material a, Ra= %.f MKS unit \n",Ra);
printf("\n (c.5) Relucatnce of the Material b, Rb= %.1f MKS unit \n",Rb);
printf("\n (c.6) Relucatnce of the Material c, Rc= %.f MKS unit \n",Rc);
printf("\n (d)   Inductance of the Coil , L = %.4f H \n",L);
