clc();
clear;
//Given:
//Wavelength
n=1; // first order diffraction
lambda1 = 4680 ;// Wavelength in A
lambda2 = 4800; //Wavelength in A
lambda3 = 5770 ; // Wave;ength in A
// First order diffraction angle
theta1 = 28.0; // angle in degrees
theta2 = 28.7; // angle in degrees
theta3 = 35.5; //angle in degrees
//Grating equation : (a+b) = n*lambda/sin(theta) 
a1_plus_b1 = (n*lambda1)/sind(theta1); //spacing in A
a2_plus_b2 = (n*lambda2)/sind(theta2); //spacing in A
a3_plus_b3 = (n*lambda3)/sind(theta3); //spacing  in A
mean_spacing = (a1_plus_b1 + a2_plus_b2 + a3_plus_b3)/3; // mean spacing in A 
printf("(a)Wavelength :%d  A \n Angle of 1st order Diffraction : %.1f degrees \n Spacing = %.1f A\n\n",lambda1,theta1,a1_plus_b1);
printf("(b)Wavelength :%d  A \n Angle of 1st order Diffraction : %.1f degrees \n Spacing = %.1f A\n\n",lambda2,theta2,a2_plus_b2);
printf("(c)Wavelength :%d  A \n Angle of 1st order Diffraction : %.1f degrees \n Spacing = %.1f A\n\n",lambda3,theta3,a3_plus_b3);
printf("Mean Spacing = %.1f A",mean_spacing);
