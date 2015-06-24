//clear//
//Example 1.13(b):Determination of stability of a given system
//Page 50
//given system y(t) = exp(x(t))
clear;
clc;
Maximum_Limit = 10;
S = 0;
for t = 0:Maximum_Limit-1
  x(t+1)= -2^t;          //Input some bounded value
  S = S+exp(x(t+1));
end 
if (S >Maximum_Limit)
  disp('Eventhough input is bounded output is unbounded')
  disp('The given system is unstable');
  disp('S =');
  S
 else
  disp('The given system is stable');
  disp(S);
end
