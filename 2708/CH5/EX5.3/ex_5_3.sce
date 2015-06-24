//Example 5.3 // refractive index  
clc;
// given data
NA=.22;//Numerical Aperature
Fr=.012;//Fractional refractive index
u1=NA/sqrt(Fr*(2-Fr));// refractive index of core
u2=sqrt(u1^2-NA^2);// refractive index of clad
disp(u1,"Refractive index of core")
disp(u2,"Refractive index of clad")
