//Chapter 07: Discrete Probability

clc;
clear;

tot_out=36        //total no of outcomes when 2 dice are rolled
X=[2,3,4,5,6,7,8,9,10,11,12]          //possible sum of 2 dice
pX2=1/tot_out  //no of possible chances
pX12=pX2  //no of possible chances
pX3=2/tot_out  //no of possible chances
pX11=pX3  //no of possible chances
pX4=3/tot_out  //no of possible chances
pX10=pX4  //no of possible chances
pX5=4/tot_out  //no of possible chances
pX9=pX5  //no of possible chances
pX6=5/tot_out  //no of possible chances
pX8=pX6  //no of possible chances
pX7=6/tot_out  //no of possible chances

Ex=X(1)*pX2+X(2)*pX3+X(3)*pX4+X(4)*pX5+X(5)*pX6+X(6)*pX7+X(7)*pX8+X(8)*pX9+X(9)*pX10+X(10)*pX11+X(11)*pX12

disp(Ex,'Ex=')
