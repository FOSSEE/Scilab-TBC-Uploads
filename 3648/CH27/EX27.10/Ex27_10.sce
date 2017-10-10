
//Example 27_10
clc();
clear;
//To find the fraction of original amount still existence in earth
t1=1.41*10^10        //Units in Years
lamda=0.693/t1       //Units in year^-1
t=5*10^9      //Units in years
n_no=%e^-(lamda*t)       //Units in constant
n_no=n_no*100    //Units in percentage
printf("The percentage of original amount still remaining is N/No=%.3f Percent",n_no)
