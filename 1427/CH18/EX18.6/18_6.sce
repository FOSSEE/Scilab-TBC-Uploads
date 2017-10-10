//ques-18.6
//Calculating standard heat of formation of n heptane
clc
E1=-1150;//internal energy change at constant volume (in kcal)
h2=-94;//heat of formation of carbon dioxide (in kcal)
h3=-68;//heat of formation of carbon dioxide (in kcal)
H=7*h2+8*h3-E1;//heat of formation 
printf("Heat of formation of n-heptane is %d kcal/mol.",H);
