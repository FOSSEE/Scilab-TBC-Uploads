//ques-2.6
//Calculating Gross and net calorific value of coal
clc
x=0.92;//Weight of coal sample (in g)
W=550;//Weight of water (in g)
w=2200;//Water equivalent (in g)
t=2.42;//Rise in temperature
a=50;//Acid corrections
f=10;//Fuse wire corrections
H=6;//Percentage of Hydrogen
L=580;//Latent heat of steam (in cal/g)
GCV=((W+w)*t-(a+f))/x;//Gross calorific value
NCV=GCV-0.09*H*L;//Net calorific value
printf("Gross calorific value is %.1f cal/g and Net calorific value is %.1f cal/g respectively.\n",GCV,NCV);
