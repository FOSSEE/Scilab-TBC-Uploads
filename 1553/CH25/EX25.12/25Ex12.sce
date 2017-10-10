//Chapter 25 Ex 12

clc;
close;
clear;
//let the original length of edge a=1
edge=1; inc=50/100;
surorg=6*(edge^2);
newedge=(1+inc)*edge;
surnew=6*(newedge^2);
incsurarea=((surnew-surorg)/surorg)*100;
mprintf("The percentage increase in surface area is %d percent",incsurarea);
