//clear//
//Example 1.12:Classification of system:Causality property
//Page 47
//To check whether the given discrete system is a Causal System (or) Non-Causal System
//Given discrete system y[n]= x[-n]
clear;
clc;
x = [2,4,6,8,10,0,0,0,1];  //Assign some value to input
n = -length(x)/2:length(x)/2;
count = 0;
mid = ceil(length(x)/2);
y = zeros(1,length(x));
y(mid+1:$) = x($:-1:mid+1);
for n = -1:-1:-mid
  y(n+1+mid) = x(-n);
end
for i = 1:length(x)
  if (y(i)==x(i))
    count = count+1;
  end
end 
if (count==length(x))
    disp('The given system is a causal system')
else
    disp('Since it depends on future input value')
    disp('The given system is a non-causal system')
end
