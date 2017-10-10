//ques-2.13
//Calculate mass of air needed for combustion of 5kg of coal
clc
m=5;//Mass of coal (in kg)
H=15;//Percentage of Hydrogen
C=80;//Percentage of Carbon
O=100-(C+H);//Percentage of Oxygen
m1=(H/100)*m;//Mass of hydrogen in coal
m2=(O/100)*m;//Mass of oxygen in coal
W=(5*(32/12)+m1*(16/2)-m2)*(100/23);//Amount of air
printf("The amount of air required is %.2f kg.\n",W);
