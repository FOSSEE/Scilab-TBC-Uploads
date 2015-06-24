//Gerschgorin's first theorem
clc;
clear;
close();
//find the eigen values lying [0,4] with an error of 0.25
//taking p at mid point of the interval
C=[2,-1,0;-1,2,-1;0,-1,1];
p=2;

f(1)=1;
f(2)=C(1,1)-p;
count = 0;
if f(1)*f(2)>0 then
    count = 1;
end
for r=3:4
    br=C(r-2,r-1);
    f(r)=-br^2*f(r-2)+(C(r-1,r-1)-p)*f(r-1);
    if f(r)*f(r-1)>0 then
        count = count+1;
//    elseif f(r-1)==0 && f(r-1)*        ?????? check for sign when f(r)=zero
    end
end
disp(f,'Sturm sequences')
disp(count,'Number of eigen values strickly greater than 2 : ')

p=1;
f(1)=1;
f(2)=C(1,1)-p;
count1 = 0;
if f(1)*f(2)>0 then
    count1 = 1;
end
for r=3:4
    br=C(r-2,r-1);
    f(r)=-br^2*f(r-2)+(C(r-1,r-1)-p)*f(r-1);
    if f(r)*f(r-1)>0 then
        count1 = count1+1;
    end
end
disp(f,'Sturm sequences')
disp(count1,'Number of eigen values strickly greater than 1 : ')

p=1.5;
f(1)=1;
f(2)=C(1,1)-p;
count2 = 0;
if f(1)*f(2)>0 then
    count2 = 1;
end
for r=3:4
    br=C(r-2,r-1);
    f(r)=-br^2*f(r-2)+(C(r-1,r-1)-p)*f(r-1);
    if f(r)*f(r-1)>0 then
        count2 = count2+1;
    end
end
disp(f,'Sturm sequences')
disp(count2,'Number of eigen values strickly greater than 1.5 : ')
disp(p+0.25,'Eigen value lying between [1.5,2] ie with an error of 0.25 is : ')