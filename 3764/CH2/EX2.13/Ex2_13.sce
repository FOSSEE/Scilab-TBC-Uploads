clc
//

//Variable declaration
L=500.0                                                                   // Length of rod(mm)
A=60                                                                      // Cross Sectional area(mm**2)
E=200                                                                     // Modulus of elasticity(GPa)
ey=300                                                                    // Yield Point(MPa)                                                                
DELTAc=7                                                                  // Stretch(mm)  

//Calculation
ec=DELTAc/L                                                               // Maximum strain permitted on point C
ey=(ey*((10**6)))/(E*((10**9))*(1.0))                                       // Maximum strain permitted on point Y 
ed=ec-ey                                                                  // Strain after unloading
DELTAd=ed*L                                                               // Deformation(mm)

// Results
printf("\n Permanent set deformation =%1f mm' ,DELTAd)
