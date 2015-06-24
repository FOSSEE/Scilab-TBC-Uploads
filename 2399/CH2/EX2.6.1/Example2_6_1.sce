// Example 2.6.1
clc;
clear;
NA = 0.45       //Numerical aperture
betaB = 45       // Skew ray change direction by 90 degree at each reflection
Meridional_theta = asind(NA);   //computing acceptacne angle for meridoinal ray
Skew_theta = asind(NA/cosd(betaB));  //computing acceptacne angle for skew ray
printf("\nAcceptacne angle for Meridoinal ray is %.2f degree.\nAcceptance angle for Skew ray %.1f degree.",Meridional_theta,Skew_theta);
