//Example 27_12
clc();
clear;
//To estimate the age of the axe handle
n_no=0.034
t1=5730  //Units in Years
t=-(log(n_no)*t1)/0.693 //Units in Years
printf("The age of the axe handle is t=%d years",t)
//In textbook answer is printed wrong as t=28000 years correct answer is t=27958 years 
