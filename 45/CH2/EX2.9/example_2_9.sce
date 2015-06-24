//Example 2.9
clc
clear
close
a=[0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1];
b=[0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1];
c=[0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
d=[0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
for i=1:16      // finding Y for all 16 cases 
    x=bitor(a(i),b(i));
    y=bitor(c(i),d(i));
    r(i)=bitand(x,y);
    x1=bitcmp(x,1);
    y1=bitcmp(y,1);
    z=bitor(x1,y1);
    r1(i)=bitcmp(z,1);
end
disp('   Y    Y1');
for i = 1 : 16
        Y(i,1)=r1(i);
        Y(i,2)=r(i);
        end
disp(Y); //displaying result 
disp('Both are logically equivalent');
