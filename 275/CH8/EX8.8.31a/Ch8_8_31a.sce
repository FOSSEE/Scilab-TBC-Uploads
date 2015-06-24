clc
clear
disp("Example 8.31a")
printf("\n")
disp("perform the following binary substraction using 1s complement")
disp("a)1010-0111 b)0110-1101")
a=[1 0 1 0]
b=~[0 1 1 1]
d=0
for i=1:length(a)
    c(i)=a(length(a)+1-i)+b(length(a)+1-i)+d
    if(c(i)==1)
        d=0
    end
    if[c(i)==2]
        d=1
        c(i)=0
        end
end
f=1
if(d==1)
    for i=1:length(a)
        g(i)=c(i)+f
        if(g(i)==1)
            f=0
            end
        if(g(i)==2)
            f=1
            g(i)=0
        end
        
    end
    for i=1:length(a)
    c(i)=g(i)
    end
end
if(d==0)
    for i=1:length(a)
    c(i)=~c(i)
    end
end
printf("result =%d%d%d%d",c(4),c(3),c(2),c(1))

