//Example 2.21b
clc;
x1=[1,1,1,1]
x2=[2,2,2,2]
a=1
b=1
for t=1:length(x1)
    x3(t)=a*x1(t)+b*x2(t)
end
for t=1:length(x1)
    y1(t)=7*x1(t)+5
    y2(t)=7*x2(t)+5
    y3(t)=7*x3(t)+5
end
for t=1:length(y1)
    z(t)=a*y1(t)+b*y2(t)
end
count=0
for n=1:length(y1)
    if(y3(t)==z(t))
        count=count+1;
     end   
end
if(count==length(y3))
disp('It satisfy the superposition principle');
disp('THE GIVEN SYSTEM IS LINEAR ');
else
    disp('It does not satisfy superposition principle ');
    disp('THE GIVEN SYSTEM IS NON LINEAR');
end