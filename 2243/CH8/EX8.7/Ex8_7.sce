clc();
clear;
//Given :
Q = 4 ;// in MeV
Ex = 2; // in MeV
Ey = 5 ; // in MeV
mx = 4; // in u
my = 1 ; // in u
My =13; // in u
theta = acosd(( (Ey*(1 + (my/My))) - (Ex*(1 - (mx/My))) - Q )/((2/My)*sqrt(mx*Ex*my*Ey))); // angle of ejection in degrees 
printf("Angle of ejection is %.0f degrees",theta);
