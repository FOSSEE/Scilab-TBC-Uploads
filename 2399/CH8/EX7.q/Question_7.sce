// Question 7  page 8.44
clc;
clear;
w=25d-6;    //width
v=3d4;      //velocity
t=w/v;      //computing drift time
BW=(2*%pi*t)^-1;        //computing bandwidth
rt=1/BW;    //response time
rt=rt*10^9;

printf("\nMaximum response time is %.2f ns.",rt);

//Answer in the book is given as 5.24ns deviation of 0.01ns
