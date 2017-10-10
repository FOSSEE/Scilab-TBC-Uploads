//ques-2.5
//Calculating calorific value of coal sample
clc
m=0.6;//Mass of coal sample
S=4.187;//Specific heat of water (in kJ/kg)
t=6.52;//Rise in temperature
w=2200;//Water equivalent (in g)
heat=(w*S*t)/1000;//Heat liberated by burning coal (in kJ)
CV=heat/m;//Calorific value (in kJ/g)
printf("The calorific value of coal sample is %.1f kJ/g.\n",CV);
