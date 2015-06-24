//Example 5.1
//To sketch the graph of minus sinx in a given interval
clear,clc;

x = linspace(-0,2*%pi,50);
y = -sin(x) ;
set(gca(),"grid",[5 5]);
plot(x,y);
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=-sin(x)$","fontsize",4,"color","red");
title("Example 5.1","color","blue","fontsize",9);
