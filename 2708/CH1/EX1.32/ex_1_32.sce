//Example 1.32 // wavelength of light 
clc;
//given data :
n1=5;//order of ring
n2=25;// order of ring
m=n2-n1;//difference of ring order
R=100;//radius of curvature in cm
d1=.3;//diameter of ring n cm
d2=.8;//diameter of ring in cm
w=(d2^2-d1^2)/(4*R*m);//wavelength in cm 
disp(w,"wacelength of light in cm")
