clc
D = 20 // diameter in mm
p = 2.5 // pitch diameter in mm
d = 0.5774*p // mm
W = D+3*d-1.5156*p// best wire size in mm
printf("\n Best wire size = %0.3f mm\n Distance over wires = %0.3f mm" ,d, W)
// Answer vary due to round off error
