//Sturm sequence property
clc;
clear;
close();
C=[2,4,0,0;4,10,3,0;0,3,9,-1;0,0,-1,5];
//find the eigen vClues lying (0,5)
p=0;

f(1)=1;
f(2)=C(1,1)-p;
count = 0;
if f(1)*f(2)>=0 then
    count = 1;
end
for r=3:5
    br=C(r-2,r-1);
    f(r)=-br^2*f(r-2)+(C(r-1,r-1)-p)*f(r-1);
    if f(r)*f(r-1)>=0 then
        count = count+1;
    end
end
disp(f,'Sturm sequences')
disp(count,'Number of eigen values strickly greater than 0 : ')

p=5;
f(1)=1;
f(2)=C(1,1)-p;
count1 = 0;
if f(1)*f(2)>=0 then
    count1 = 1;
end
for r=3:5
    br=C(r-2,r-1);
    f(r)=-br^2*f(r-2)+(C(r-1,r-1)-p)*f(r-1);
    if f(r)*f(r-1)>=0 then
        count1 = count1+1;
    end
end
disp(f,'Sturm sequences')
disp(count1,'Number of eigen values strickly greater than 5 : ')
disp(count-count1,'Number of eigen values between 0 and 5 : ')
