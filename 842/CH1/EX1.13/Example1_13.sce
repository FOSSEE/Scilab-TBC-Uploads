//clear//
//Example 1.13:Determination of stablility of a given system
//Page 49
//given system y(t) = t.x(t)
clear;
clc;
x = [1,2,3,4,0,2,1,3,5,8]; //Assign some input 
Maximum_Limit = 10;
S = 0;
for t = 0:Maximum_Limit-1
  S = S+t*x(t+1);
end 
if (S >Maximum_Limit)
  disp('Eventhough input is bounded output is unbounded')
  disp('The given system is unstable');
  disp('S =');
  S
 else
  disp('The given system is stable');
  disp('The value of S =');
  S
end
