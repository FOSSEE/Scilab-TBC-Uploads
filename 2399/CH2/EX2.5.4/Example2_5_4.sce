// Example 2.5.4
clc;
clear;
diameter = 1;       //Diameter in centimeter
Focal_length = 10;      //Focal length in centimeter
radius=diameter/2;  //computing radius
Acceptance_angle = atand(radius/Focal_length);  //computing acceptance angle
Conical_full_angle = 2*Acceptance_angle;        //computing conical angle
Solid_acceptance_angle = %pi*Acceptance_angle^2;    //computing solid acceptance angle
NA = sqrt(Solid_acceptance_angle/%pi);      //computing Numerical aperture
printf("\nNumerical aperture is %.2f.\nConical full angle is %.2f degree.",NA,Conical_full_angle);


