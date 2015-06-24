clear;
clc;
a=1;c=3*(10^8);f=(10^9);d=25;
lc=2*a;
lo=c/f;
l=lo/(10^2);
att=(54.55/lc)*d;
printf("Total attenuation = %f db",round(att*100)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
