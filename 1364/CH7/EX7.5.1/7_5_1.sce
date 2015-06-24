clc
//initialisation of variables
r= 40
c= 2//lb/sec
v= 2500 //ft/sec
v1= 800 //ft/sec
//CALCULATIONS
m1= r*c
mr= r*c+c
F= (mr*v-m1*v1)/32.2
P= F*v1/550
//RESULTS
printf (' thrust horse power developed under these conditions = %.f h.p',P)
