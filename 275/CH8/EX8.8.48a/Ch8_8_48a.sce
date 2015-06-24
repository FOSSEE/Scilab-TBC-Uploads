clc
clear
disp("Example 8.48a")
printf("\n")
disp("Prove the following boolean thereom")
disp("A+AB=A")
disp("A=a,B=b,AB=s,A+AB=d")
a=[0 0 1 1]
b=[0 1 0 1]
for i=1:length(a)
    s(i)=a(i)*b(i)
end
for i=1:length(a)
    d(i)=s(i)+a(i)
    if(d(i)==2)
        d(i)=1
    end
    
end

for i=1:length(a)
    if(a(i)==d(i))
        printf("")
    else
        printf("not")
        abort
    end
    
end
printf("yes")