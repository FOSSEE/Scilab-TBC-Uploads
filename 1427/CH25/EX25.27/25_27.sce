//ques-25.27
//Calculating coefficient of viscosity of benzene
clc
t1=46;//time taken by benzene (in s)
t2=68;//time taken by water (in s)
den1=0.8;//density of benzene (in g/mL)
den2=0.998;//density of water (in g/mL)
visc2=1.008;//coefficient of viscosity of water (in centipoise)
visc1=(den1*t1*visc2)/(den2*t2);
printf("The coefficient of viscosity of benzene is %.4f centipoise.",visc1);
