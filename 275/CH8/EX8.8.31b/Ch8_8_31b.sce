clc
clear
disp("Example 8.31b")
printf("\n")
disp("perform the following binary substraction using 2s complement")
disp("a)1010-0111 b)0110-1101")
a=[1 0 1 0]
b=~[0 1 1 1]
d=0
h=1
for i=1:length(b)
        n(i)=b(length(b)+1-i)+h
        if(n(i)==1)
            h=0
            end
        if(n(i)==2)
            h=1
            n(i)=0
        end
        
    end
    for i=1:length(a)
    b(i)=n(i)
    end


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


if(d==0)
    for i=1:length(a)
    c(i)=~c(i)
end
j=1
for i=1:length(b)
        m(i)=c(i)+j
        if(m(i)==1)
            f=0
            end
        if(m(i)==2)
            j=1
            m(i)=0
        end
        
    end
    for i=1:length(a)
    c(i)=m(i)
    end
end
for i=1:length(a)
    C(i)=c(i)
end
printf("result =%d%d%d%d",c(4),c(3),c(2),c(1))