// Exa 5.5
clc;
clear;
close;
format('v',6)
// Given data
R1 = 3;// in ohm
R2 = 6;// in ohm
R3 = 2;// in ohm
// V1 = (R1*I1)+  (R2*(I1+I2)) = ((R1+R2)*I1)+(R2*I2)   (i)
// V2 = (R3*I2) + (R2*(I1+I2)) = (R2*I1) + ((R1+R3)*I2) (ii)
// Standard h-parameter equation 
//V1= h11*I1 +h12*I2 and V2= h21*I1 + h22*I2
// Comparing eq (i) and (ii) with standard equaation, we get
h11= R1+R2;
disp(h11,"The value of h11 is");
h12= R2;
disp(h12,"The value of h12 is");
h21= R2;
disp(h21,"The value of h21 is");
h22= R2+R3;
disp(h22,"The value of h22 is");
