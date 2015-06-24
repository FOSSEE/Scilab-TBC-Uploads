//Example 2.12
clc
clear
a=[0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1];
b=[0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1];
c=[0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
d=[0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
for i=1:16 // finding Y and y1 for all possible inpt cases 
    x=bitand(a(i),b(i));
    y=bitand(c(i),d(i));
    r(i)=bitor(x,y);
    x1=bitcmp(x,1);
    y1=bitcmp(y,1);
    z=bitand(x1,y1);
    r1(i)=bitcmp(z,1);
end
disp('   Y    Y1');
for i = 1 : 16 // displaying result
        Y(i,1)=r(i);
        Y(i,2)=r1(i);
        end
disp(Y);
disp('Both are logically equivalent');
