//Example 9 //  Frequency
clc;
clear;
close;
n=273;//
b1=4;//beats per second
b2=b1-1;//
t1=15;//degree celsius
t2=10;//degree celsius
v1510=sqrt((n+t1)/(n+t2));//
n=((b2*v1510-b1)/(1-v1510));//
disp(n,"frequency is,(Hz)=")
