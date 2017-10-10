//Example 1.29<a>:
//Determination of stablility of a given system
clear;
clc;
x=[1,2,3,4,0,2,1,3,5,8];
Maximum_Limit=10;
S=0;
for t=0:Maximum_Limit-1
S=S+t*x(t+1);
end 
if (S >Maximum_Limit)
disp('Eventhough input is bounded output is unbounded')
disp('The given system is unstable');
else
disp('The given system is stable');
end
