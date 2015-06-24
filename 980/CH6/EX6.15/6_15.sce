clc;
clear;
format('v',11);
disp("The impurity is type 3 so the dopped material is a P-type semiconductor adn hence nh=3*10^23");
nh=3*10^23;
Mh=0.05;                            //Mh=mobility of holes
sigma=nh*Mh*1.6*10^-19;             //as nh>>ne,because of impurity.
disp(sigma,"The conductivity of the material(in mho/m)=");
