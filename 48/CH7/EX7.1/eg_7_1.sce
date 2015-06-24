clc;
clear;
//takes the input and check whether it is valid or not
x1=input("x1 = ");
while(x1~=0 & x1~=1)
    disp("enter a valid logical level");
    x1=input("x1 = ");
end
x2=input("x2 = ");
while(x2~=0 & x2~=1)
    disp("enter a valid logical level");
    x2=input("x = ");
end
x3=input("x3 = ");
while(x3~=0 & x3~=1)
    disp("enter a valid logical level");
    x3=input("x3 = ");
end
f=-x1+(2*x2)+x3;
if(f>0.5) then
    f=1;
else
    f=0;
end
disp(f,"output y is");
m=1;
//displays the output of the above expression for all the combinations of inputs.
for x=0:1
    for y=0:1
        for z=0:1
            f1(m,1)=x;
            f1(m,2)=y;
            f2(m,3)=z;
            f1(m,4)=-x+(2*y)+z;
            if(f1(m,4)>0.5) then
                f1(m,5)=1;
            else
                f1(m,5)=0;
            end
            m=m+1;
        end
    end
end
disp("   x1    x2    x3   sum    y");
disp(f1)
