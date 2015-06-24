clc
// from figure 2.75 (a)
r1 = 30 // radius in mm
t = 10 // thickness in mm
h1 = 300 // height in mm
ir1 = r1-t // inner radius of bends in mm
L1 = h1-(ir1+t) // mm
alpha1 = 90 // degree
r2 = 2*t // mm
k = 0.33*t // mm
L2 = alpha1*2*%pi*(r2+k)/360 // mm
w = 200 // mm
L3 = w-2*(t+ir1)// mm
L4 = L2 //mm
h2 = 100 // mm
L5 = h2 -(t+ir1) // mm
r3 = 150 //mm 
ir2 = r3 - t // inner radius in mm
alpha2 = 180 // degree
L6 = alpha2*2*%pi*(ir2+k)/360 // mm
dl = L1+L2+L3+L4+L5+L6 // Total developed length in mm
printf("\n Total developed length = %0.2f mm" , dl)
// Answers vary due to round off error
