
clear ;
clc;
close;
clf;
x=linspace(0,1,7);
y=10^x;
plot2d(x,y,2);
xtitle(" graph of y=10^x","x axis","y axis");
legend("y=10^x");
xgrid()

//ex1:1.8*2.6=? ,from graph
//1.8=10^0.26 \n 2.6=10^0.42  
x=10^0.26;y=10^0.42;
format(4)
ex1_ans=x*y//from the graph

//ex2:9^(1/3)
//9=10^0.96
x=10^0.96;
format(4)
ex2_ans=x^(1/3)//third law of indices
