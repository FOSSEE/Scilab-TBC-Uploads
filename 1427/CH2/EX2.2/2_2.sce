//ques-2.2
//Calculating percentage of hydrogen and Higher calorific value
clc
C=90;//Percentage of Carbon in coal
O=3;//Percentage of Oxygen in coal
S=0.5;//Percentage of Sulphur in coal
NCV=8490.5;//Net calorific value (in kcal/kg)
//HCV=NCV+0.09*H*587;
//HCV=(8080*C+34500*(H-O/8)+2240*S)/100;
//Solving for H
H=1335.7/292.2;//Percentage of hydrogen
HCV=NCV+0.09*H*587;//Higher calorific value
printf("The pecentage of Hydrogen is %.3f and Higher calorific value is %.1f kcal/kg.\n",H,HCV);
