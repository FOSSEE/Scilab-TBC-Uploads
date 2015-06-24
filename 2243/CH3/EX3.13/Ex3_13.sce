clc();
clear;
//Given :
angle = 4*10^-2 ; // angle in rad
//1 radian = 57.2957795 degrees
theta = angle*57.2957795 ;// in degrees 
//  d*sin(theta) = lambda , so  d = lambda/(sin(theta)) :
//(a)For Sound waves 
lambda1 = 0.75; // Wavelength in m
d1 = lambda1/sind(theta); // distance in m 
//(b)For Ultrasonic waves
lambda2 = 0.1; // Wwavelength in m
d2 =  lambda2/sind(theta); // distance in m
//(c)For microwaves 
lambda3 = 2.9 ; // Wavelength in cm
//1cm = 1.0*10^-2 m
d3 = lambda3*10^-2/sind(theta); // distance in m
//(d)For IR waves
lambda4 = 10; // Wavelength in mu_m
// 1 mu_m = 1.0*10^-6 m
d4 = lambda4*10^-6/sind(theta);// distance in m
//(e)For light waves 
lambda5 = 5890;// in angstroms
//1 A = 1.0*10^-10 m
d5 = lambda5*10^-10/sind(theta); // distance in m
printf(" (a)For Sound waves : %.2f m \n",d1);
printf(" (b)For Ultrasonic waves : %.2f m \n",d2);
printf(" (c)For Microwaves  : %.2f m \n",d3);
printf(" (d)For IR waves : %.1f mu m \n",d4*10^6);
printf(" (e)For Light waves : %.2f mu m \n",d5*10^6);




