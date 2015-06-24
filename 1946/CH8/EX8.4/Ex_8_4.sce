// Example 8.4;//fresenel reflection coefficient
clc;
clear;
close;
n1=1.45;//Core refrative index
n2=1;//refractive index of air
R=((n1-n2)/(n1+n2))^2;//Fresenel Coefficient
disp(R,"fresenel reflection coefficient is")
