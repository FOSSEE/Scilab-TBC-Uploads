

clc
// Given that
d1 = 15.2 // Initial diameter in mm
d2 = 12.2 // Final diameter in mm
printf("Example 10.2\n")
per_CW = (d1^2 - d2^2)*100/d1^2 
printf("\n The tensile strength is read directly from the curve for copper(figure 10.9b) \n as 340 MPa From figure 10.19c, the Ductility at %0.1f CW is about 7%% EL.",per_CW)

// Some values are deduced from figures
