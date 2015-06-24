clc
// from figure 2.74
l1 = 76 - ( 2.3 + 0.90) // length1 in mm
l2 = 115 - (2.3 + 0.90) // length2 in mm
t = 2.3 // mm
r = 0.90 // inner radius in mm
k = t/3 // mm
B = 0.5*%pi*(r + k) // bending allowance in mm
d = l1 + l2 + B // developed length in mm
printf("\n Developed length = %0.2f mm" , d)
// Answers vary due to round off error
