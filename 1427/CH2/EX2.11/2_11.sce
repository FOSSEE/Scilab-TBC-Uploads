//ques-2.11
//Calculating weight and volume of air required for combustion of Carbon
clc
m=3;//Mass of carbon used for combustion (in kg)
W=m*(100/23)*(32/12);//Weight of air used (in kg)
V=W*(22.4/28.94);//Volume of air used (in L)
printf("The weight and volume of air required for combustion is %.3f kg and %.2f kL respectively.\n",W,V);

