clear all; clc;

disp("Scilab Code Ex 10.14 : ")

//Given:
r = 0.5; //cm
sigma_yield = 360; //MPa
T = 3.25; //kN/cm
A= (%pi*r^2);
P = 15; //kN
J = (%pi/2)*(r^4);
sigma_y_sqr = sigma_yield^2;

//Calculations:
sigma_x = -(P/A)*10;
sigma_y = 0;
tou_xy = (T*r*10)/J;

k = (sigma_x + sigma_y)/2;
R = sqrt(k^2 + (tou_xy^2));

sigma1 = k+R;
sigma2 = k-R;
l = sigma1 - sigma2;

//Maximum Shear Stress Theory:
test1 = abs(l);

if(test1 >= sigma_yield)
    
    printf("\n\nFailure occurs by Maximum Shear Stress Theory.');
end


//Maximum Distortion-Energy Theory:
test2 = (sigma1^2 - (sigma1*sigma2) + sigma2^2);


if(test2<sigma_y_sqr)
 
    printf("\n\nFailure will not occur by Maximum Distortion-Energy Theory.');
end
