//Chapter 1
//Example 1.18
//Page 42

clear;
clc;

t1=21.2;
t2=25;
t3=18.5;
t4=22.1;
t5=19.7;
t6=27.1;
t7=19;
t8=20;
AVE=(t1+t2+t3+t4+t5+t6+t7+t8)/8;

//Finding the arithmetic mean of the temperature
printf("The arithmetic mean of the temperatue is %f degree celcius \n",AVE);
printf("The standard deviation is %.2f degree celcius",sqrt(((t1-AVE)^2)+((t2-AVE)^2)+((t3-AVE)^2)+((t4-AVE)^2)+((t5-AVE)^2)+((t6-AVE)^2)+((t7-AVE)^2)+((t8-AVE)^2))/sqrt(8-1));
