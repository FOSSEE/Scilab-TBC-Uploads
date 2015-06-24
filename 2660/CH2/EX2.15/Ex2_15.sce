clc
d1 = 105 // inside diameter in mm
h = 90 // depth in mm
t = 1 // thickness in mm
D = sqrt(d1^2+4*d1*h) // blank diameter in mm
tr = t*100/D // thickness ratio
// from table safe drawing ratio is 1.82
r = 1.82 // draw ratio
d2 = D/r // diameter for first draw in mm
d = 130 // Let diameter for first draw in mm
ratio1 = D/d // D/d for first draw 
ratio2 = d/d1 // D/d for second draw
h1 =((D)^2-(d)^2)/(4*d) // Depth of first draw in mm
sigma = 415 // N/mm^2
c = 0.65 // constant
pc = %pi*d*t*sigma(D/d - c) // press capacity in kN
printf("\n Blank diameter = %d mm \n Thickness ratio = %0.3f \n Diameter for first draw = %d mm \n Depth of first draw = %0.2f mm \n Press capacity = %0.2f kN" ,D,tr,d2,h1,pc/1000)
// Answers vary due to round off error
