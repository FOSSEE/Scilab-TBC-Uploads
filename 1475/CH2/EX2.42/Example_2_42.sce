// Example 2.42 A fair coin is tossed 400 times
clc;
clear;
n=400;
p=1/2;
q=1-p;
m=n*p;
s_d=sqrt(n*p*q);
disp(2*0.199," = 2*(Area between z= 0 and z= 0.05)",(199.5-m)/s_d,"and",(200.5-m)/s_d,"Probability of obtaining exactly 200 heads  = (199.5-m)/s_d and (200.5-m)/s_d =");
disp(0.5+0.3289," = (Area between left of z= 0 + Area between z=0 and z= 0.95)",(209.5-m)/s_d,"Probability of obtaining less than 210 heads =  (209.5-m)/s_d and ");
disp(2*0.3531," = 2*(Area between z= -1.05 and z= 1.05)",(189.5-m)/s_d,"and",(210.5-m)/s_d,"Probability of obtaining betweeen 190 and 210 heads = (189.5-m)/s_d and (210.5-m)/s_d =");
