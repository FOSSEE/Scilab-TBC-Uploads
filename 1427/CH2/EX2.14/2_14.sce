//ques-2.14
//Calculating amount of minimum air required for combustion
clc
C=80;//Percentage of Carbon in coal
H=5;//Percentage of Hydrogen in coal
O=1;//Percentage of Oxygen in coal
m=1;//Mass of coal taken(in kg)
m1=(C/100)*m;//Mass of carbon in coal (in kg)
m2=(H/100)*m;//Mass of hydrogen in coal (in kg)
m3=(O/100)*m;//Mass of oxygen in coal (in kg)
W=(m1*(32/12)+m2*(16/2)-m3)*(100/23);//Mass of air (in kg)
printf("The amount of air required for combustion of coal sample is %.3f kg.",W);
