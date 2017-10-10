//Chapter 1
//Example 1.18
//Page 42

clear;
clc;

b1=201;
b2=205;
b3=197;
b4=185;
b5=202;
b6=207;
b7=215;
b8=220;
b9=179;
b10=201;
b11=197;
b12=221;
b13=202;
b14=200;
b15=195;
a1=197;
a2=202
a3=193
a4=210
a5=207
a6=195;
a7=199;
a8=202;
a9=193;
a10=195;
a11=201;
a12=201;
a13=200;
a14=189;
a15=197;
AVE1=(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12+b13+b14+b15)/15;
AVE2=(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15)/15;

//Finding the arithmetic mean of the temperature
printf("The arithmetic mean samples before is %f g \n",AVE1);
printf("The stbndbrd devibtion of sbmples before is %f g \n",sqrt(((b1-AVE1)^2)+((b2-AVE1)^2)+((b3-AVE1)^2)+((b4-AVE1)^2)+((b5-AVE1)^2)+((b6-AVE1)^2)+((b7-AVE1)^2)+((b8-AVE1)^2)+((b9-AVE1)^2)+((b10-AVE1)^2)+((b11-AVE1)^2)+((b12-AVE1)^2)+((b13-AVE1)^2)+((b14-AVE1)^2)+((b15-AVE1)^2))/sqrt(15-1));
printf("The arithmetic mean samples before is %f g \n",AVE2);
printf("The standard deviation of samples before is %f g \n",sqrt(((a1-AVE2)^2)+((a2-AVE2)^2)+((a3-AVE2)^2)+((a4-AVE2)^2)+((a5-AVE2)^2)+((a6-AVE2)^2)+((a7-AVE2)^2)+((a8-AVE2)^2)+((a9-AVE2)^2)+((a10-AVE2)^2)+((a11-AVE2)^2)+((a12-AVE2)^2)+((a13-AVE2)^2)+((a14-AVE2)^2)+((a15-AVE2)^2))/sqrt(15-1));

