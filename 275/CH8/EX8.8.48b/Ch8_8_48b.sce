clc
clear
disp("Example 8.48b")
printf("\n")
disp("Prove the following boolean thereom")
disp("A+AB=A")
disp("A=a,B=b,A1B=s,A+A1B=d")
a=[0 0 1 1]
b=[0 1 0 1]
for i=1:length(a)
    s(i)=(~a(i))*b(i)
end
for i=1:length(a)
    d(i)=s(i)+a(i)
    if(d(i)==2)
        d(i)=1
    end
    
end

for i=1:length(a)
    e(i)=a(i)+b(i)
    if(e(i)==2)
        e(i)=1
        end
end

for i=1:length(a)
    if((e(i)==d(i)))
        printf("_")
    else
        printf("not")
        abort
    end
    
end
printf("yes")