//Chapter 4
//Example 4_3
//Page 75

clear;clc;

p=1560000;
s=60000;
n=25;
y=20;
r=0.05;

printf("(i)Straight line method\n");
ad=(p-s)/n;
val1=p-ad*y;
printf("\t Value of equipment after %.0f years = Rs. %.0f \n\n", y, val1);

printf("(ii)Diminishing value method\n");
x=1-(s/p)^(1/n);
val2=p*(1-x)^y;
printf("\t Value of equipment after %.0f years = Rs. %.0f \n\n", y, val2);

printf("(iii)Sinking fund method\n");
q=(p-s)*r/((1+r)^n-1);
sf=q*((1+r)^y-1)/r;
val3=p-sf;
printf("\t Value of equipment after %.0f years = Rs. %.0f \n\n", y, val3);
