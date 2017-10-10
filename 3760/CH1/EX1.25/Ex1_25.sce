
clc;
// subscripts 1 and 2 are used the quantities referred to 60 hz and 50 hz frequency respectively
v1=220; // rated voltage at 60 hz
f1=60; // operating frequency
ph1=340; // hysteresis loss at 60 hz
pe1=120; // eddy current loss at 60 hz
v2=230; // rated voltage at 50 hz
f2=50; // operating frequency
s=1.6; // Steinmetz's constant
B=(f1/f2)*(v2/v1); // ratio of flux densities Bm2/Bm1
ph2=ceil(ph1*(50/60)*B^s); // hysteresis loss at 50 hz
pe2=pe1*(f2/f1)^2*(B)^2;// eddy current loss at 50 hz
pc=ph2+pe2; 
printf('Total core loss at 50 hz is %f W',pc);
