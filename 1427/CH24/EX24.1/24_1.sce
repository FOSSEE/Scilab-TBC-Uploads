//ques-24.1
//Calculating molality and mole fraction of sugar
clc
w=34.2;//mass of sugar (in g)
W=214.2-w;//mass of water (in g)
n=w/342;//moles of sugar
N=W/18;//moles of water
m=n/(W/1000);//molality
x=n/(n+N);//mole fraction of sugar
printf("The molality of the solution %.3f mol/kg and mole fraction of sugar is %.4f.",m,x);
