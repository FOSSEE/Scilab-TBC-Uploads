//Example 1.14a
clc;
x=[1,2,3,4,0,4,3,2,1]
t=-length(x)/2:length(x)/2
count=0
mid=ceil(length(x)/2)
y=zeros(1,length(x))
y(mid+1:$)=x($:-1:mid+1)
for t=-1:-1:-mid
    y(t+1+mid)=x(-t)
end
for i=1:length(x)
    if(y(i)==x(i))
        count=count+1
     end
end
if(count==length(x))
    disp('THE GIVEN SYSTEM IS CAUSAL')
else
    disp('Since it depends on future values')
    disp('THE GIVEN SYSTEM IS NON CAUSAL')
end