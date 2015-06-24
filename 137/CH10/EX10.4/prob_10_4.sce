// page no 438
//problem no 10.4
clc;
m=input("enter the number of faces = ");// m = 2
n=input("enter the number of tosses = ");// n = 4 
l=m^n ;// j is total number of outcomes = 16
a=input(" enter exact no of heads = "); // to obtain exactly 'a' heads
p=gamma (n+1)/(gamma(n+1-a) * gamma (a+1));// to find combination
disp(p/l,"probability = ");
