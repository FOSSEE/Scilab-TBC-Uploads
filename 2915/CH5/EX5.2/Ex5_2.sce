//Example 5.2
//To sketch the graph of function of 1+cos(x) in given interval
clear,clc;

x = linspace(-0,2*%pi,50);
y = 1+cos(x) ;
set(gca(),"grid",[5 5]);
plot(x,y);
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=1+cos(x)$","fontsize",4,"color","red");
title("Example 5.2","color","blue","fontsize",9);
