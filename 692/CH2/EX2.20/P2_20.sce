//EXAMPLE 2.20,Passive or lossless system.
clear;
clc;
a=input("any value of a less than or equal to one")
n=-10:1:10;
 x=n;
 y=a*n;
 S=0;
 for i=1:length(n)
     S=S+y^2; 
 end

 if a<1 then
     disp('the system is passive')
 else
     
     a==1
     disp('the system is lossless')
    
 end
