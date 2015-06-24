

//page no 371
clc
// Given that
d1 = 6.4 // Initial diameter in mm for first drawing
sigma = 345 // tensile strength in MPa
el = 20 // ductility in percent
d2 = 5.1 // Final diameter in mm
per_cw = 21.5 // deformation
printf("Design Example 10.1\n")
per_CW = (d1^2 - d2^2)*100/d1^2 
d0 = sqrt((d2^2*100)/(100-el))
printf("\n Theoretical %% Cold Work is %.1f",per_CW)
printf("\n Original Diameter for second drawing is %.1f mm",d0)
// Answer in book is 5.8 mm which is due to approximation at intermediate steps


