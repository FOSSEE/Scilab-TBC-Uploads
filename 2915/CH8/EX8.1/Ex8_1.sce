//Example 8.1
//To plot the function of sin(x)
clear,clc;

x = linspace(-0,2*%pi,50);
y = sin(x) ;

//For grid, uncomment below line
//set(gca(),"grid",[5 5]);

printf('NOTE:\nTo enable the grid , check the code')
plot(x,y,'r');
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=sin(x)$","fontsize",4,"color","red");
title("Example 8.1","color","blue","fontsize",9);
legend("sin(x)");
