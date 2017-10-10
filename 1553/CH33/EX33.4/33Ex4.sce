//Chapter 33 Ex 4

clc;
clear;
close;
BD=120; TD=110;   //given
t=8/12;   //converted in year
Sum=((BD*TD)/(BD-TD));
rate= ((100*BD)/(Sum*t));
mprintf("The sum is Rs.%d \n The rate is %.2f percent",Sum,rate);
