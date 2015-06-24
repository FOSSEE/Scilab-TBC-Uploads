clc
h = 10 // height of cup in cm
d = 5 // diameter of cup in cm
D = sqrt(d^2 + 4*d*h) // blank diameter in cm
// height daimeter ratio is 2 . Therefore from table 2.9 total reductions are 3
r1 = 0.45*D // first reduction is 45% 
d1 = D - r1 // diameter at first draw in cm
r2 = d1*0.25 // second reduction is 25% 
d2 = d1 - r2 // diameter at second draw in cm
r3 = d2*0.2 // third reduction is 20% 
d3 = d2 - r3 // diameter at third draw in cm
printf("\n Diameter at first draw  = %0.2f cm\n Diameter at second draw  = %0.2f cm\n Diameter at third draw  =%0.3f cm" , d1 , d2 , d3)
 
