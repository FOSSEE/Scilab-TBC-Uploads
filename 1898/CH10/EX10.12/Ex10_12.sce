clear all; clc;

disp("Scilab Code Ex 10.12 : ")

//Given:
di = 60/1000; //m
ri = di/2;
d0 = 80/1000;//m
ro = d0/2;
T = 8000;//Nm
M = 3500; //Nm
sigma_y_sqr = 250^2; //MPa

//Calculations:
c = ro;
J = (%pi/2)*(ro^4 - ri^4)*(10^6);
I = (%pi/4)*(ro^4 - ri^4)*(10^6);
tou_a = (T*c)/J;
sigma_a = (M*c)/I;

sigma_avg = (0-sigma_a)/2;

R = sqrt(116.4^2 + sigma_avg^2);
sigma1 = sigma_avg + R;
sigma2 = sigma_avg - R;

test = (sigma1^2 - (sigma1*sigma2) + sigma2^2);


if(test<sigma_y_sqr)
    printf("\n\nThe material within the pipe will not yield.");
end

//-----------------------------------------------------------------------END---------------------------------------------------------------------------------
