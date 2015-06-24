//Page Number: 558
//Example 10.6
clc;
//Given

sig=5.8D+7;
f=10; //GHz
h=0.12D-2; //m

q=62.8*h*sqrt(f*sig);
disp(round(q),'conductor Q of the stripline:');
