//Chapter 1
//Example 1.7
//Page 25

clear;
clc;

T_min=20;
T_max=120;
i_min=4;
i_max=20;
T1=66;
I1=6.5;
m=(i_max-i_min)/(T_max-T_min);
I0=i_min-(T_min*m);


//Calculation of current represented by 66 degree celcius
printf("Here the value of current for 66 degree celcius = %.2f mA \n",(m*T1)+I0);
printf("Here the value of temperature for 6.5mA current = %.2f degree celcius",(I1-I0)/m);







