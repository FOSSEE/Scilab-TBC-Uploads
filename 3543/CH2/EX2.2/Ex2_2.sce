// Example 2.2
// Calculation of (a) critical angle (b) acceptance angle and oblique angle (c) numerical aperature 
// (d) percentage of light collected by the fiber and (e) diameter of fiber
// Page no 35

clc;
clear;
close;

// Given data
n1=1.5;                           // Refractive index of core
n2=1.45;                          // Refractive index of cladding
V=2.405;                          // Mode parameter
lambda=1.55                       // Wavelength of fiber

// (a) Critical angle of the
theatha=asind(n2/n1);             

// (b) Oblique angle
oa=90-theatha;                       
 //Acceptance angle   
t1=n1*sind(oa);  
th1=asind(t1); 

// (c) Numerical aperature                      
NA=sqrt(n1^2-n2^2);                   

// (d) Percentage of light collected in fiber
P=(NA)^2*100;                        

//(e) Diameter of fiber
d=V*lambda/%pi*(1/sqrt(n1^2-n2^2));  

//Display result on command window
printf("\n Critical angle (degrees) = %0.0f  ",theatha);
printf("\n Oblique angle (degrees) = %0.0f  ",oa);
printf("\n Acceptance angle (degrees) = %0.0f  ",th1);
printf("\n Numerical aperature = %0.4f  ",NA);
printf("\n Percentage of light collected in fiber = %0.1f  ",P);
printf("\n Diameter of fiber (micrometer)  = %0.2f  ",d);

