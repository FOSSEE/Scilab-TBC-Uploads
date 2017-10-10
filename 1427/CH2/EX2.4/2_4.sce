//ques-2.4
//Calculating Gross and net calorific value
clc
x=0.83//Mass of fuel (in g)
W=3500;//Weight of water (in g)
w=385;//Water equivalent of calorimter (in g)
t1=26.5;//Initial temperature
t2=29.2;//Final temperature
L=587;//Latent heat of steam (in cal/g)
H=0.7;//Percentage of Hydrogen
GCV=((W+w)*(t2-t1))/x;//Gross calorific value
NCV=GCV-0.09*H*L;//Net calorific value
printf("Gross calorific value is %.1f cal/g and Net calorific value is %.1f cal/g.\n",GCV,NCV);
