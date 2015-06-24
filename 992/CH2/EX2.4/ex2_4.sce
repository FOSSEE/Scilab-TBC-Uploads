
//Exa:2.1
clc;
clear;
close;
//Given:
It=10.25;//total power 
Ic=9;
m=sqrt(2*(It/Ic)-1);
printf("\n\n\t depth signal = %f ",m);
printf("\n when percent of odulation changed to 6");
It=Ic*(1+(m^2)/2);
printf("\n\n\t the antenna current = %f A",It);