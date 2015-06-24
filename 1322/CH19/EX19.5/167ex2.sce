
//value of (5.672*18.94)/1.758
clear; 
clc;
close;
//log(p*q)=log(p)+log(q) , log(p/q)=log(p)-log(q)
p=5.672;q=18.94;r=1.758;
logx=log10(p)+log10(q)-log10(r);
format(6)
x=10^logx
