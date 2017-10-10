//Example 6 Page 86
clc
clear

disp('a)')
s2=530//Assigning s2 values
s1=50//Assigning s1 values
t2=8//Assigning t2 values
t1=0//Assigning t1 values
m=((s2-s1)/(t2-t1));//calculating m value
disp(m,'the slope is:')//displaying m value
b=s1-m*t1;//calculating b value
disp(b,'the intercept value is')//displaying b value
mprintf( "So, %dt+%d million units ",m,b);//printing the s equation

disp('b)')
mprintf( "So, %dt+%d million units\n ",m,b);//printing the s equation
//since value of s=440
s=440//Assigning s values
m=60//Assigning m values
b=50//Assigning b values
t=(s-b)/60;//calculting time
mprintf("\nAnnual sales of mobile portable devices will reah 440 millions when s=440 or t=%f years",t);//displaying the time in years
