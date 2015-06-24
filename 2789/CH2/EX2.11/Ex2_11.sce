clear;
clc;

//page no. 54

l1 = 2;// feet
l2 = 3;// feet
rpm = 100;
p_A = (l1+l2)-(2/3)*(2*%pi*rpm/60)^2 /(2*32.2);
p_B = (l1+l2)+(1/3)*(2*%pi*rpm/60)^2 /(2*32.2);
printf('Pressure heads at point A and point B respectively are %.2f ft, %.2f ft',p_A,p_B);
