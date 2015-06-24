clc
clear
//Initialization of variables
x=[0.15 0.08 0.77]
M=[44 32 28]
//calculations
y=x ./M
yt=sum(y)
mt=y/yt
per=mt*100
wt=1/yt
R=1545/wt
//results
printf("Volumetric analysis")
disp('percent by volume')
format('v',6);per
disp(per)
printf("Weight per mole = %.1f lb",wt)
printf("\n Gas constant = %.1f ",R)
