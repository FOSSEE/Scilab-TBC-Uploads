//Chapter 1
//Example 1.14
//Page 32

clear;
clc;

R_min=100;
R_max=180;
T_min=20;
T_max=120;
m=(R_max-R_min)/(T_max-T_min);
R0=R_min-(T_min*m);

//Finding a linear euation relating resistance and temperature

printf("The linear equation would be of the form  R=mT+R0 \n");
printf("Hence the equation relating temperature and resistance is R = %.1f T + %.f",m,R0)
