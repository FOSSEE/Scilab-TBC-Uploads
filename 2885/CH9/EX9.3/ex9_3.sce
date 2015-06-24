
//Determine the efficiency of a single ended transformer
clear;
clc;
//soltion
//given

Vceq=10;//V     //supply voltage

//At Vp=10V
Vp=10;//V
Vce_max1=Vceq+Vp;
Vce_min1=Vceq-Vp;
n1=50*((Vce_max1-Vce_min1)/(Vce_max1+Vce_min1))^2;
printf("Efficiency (At Vp = 10V)= %.0f percent\n",n1);

//At Vp=5V
Vp=5;//V
Vce_max2=Vceq+Vp;
Vce_min2=Vceq-Vp;
n2=50*((Vce_max2-Vce_min2)/(Vce_max2+Vce_min2))^2;
printf("Efficiency (At Vp = 5V)= %.1f percent\n",n2);

//At Vp=1V
Vp=1;//V
Vce_max3=Vceq+Vp;
Vce_min3=Vceq-Vp;
n3=50*((Vce_max3-Vce_min3)/(Vce_max3+Vce_min3))^2;
printf("Efficiency (At Vp = 1V)= %.1f percent\n",n3);
