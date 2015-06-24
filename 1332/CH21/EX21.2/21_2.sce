//Example 21.2
//Lagrange Interpolation in Parallel Computing
//Page no. 723
clc;close;clear;

xi=[-1,0,2,5];
yi=[9,5,3,15];
s=["x=1","n=4","Data:","(-1,9)","(0,5)","(2,3)","(5,15)"]
for i=1:4
    printf('\tProcessor\t')
end
printf('\n')
for i=1:4
    printf('\t   N%i\t\t',i)
end
printf('\n')
for i=1:7
    for j=1:4
        printf('         %s\t\t',s(i))
    end
    printf('\n')
end

x=1;T=0;
for k=0:3
    p=yi(k+1)
    for j=0:3
        if(j~=k)
            p=p*((x-xi(j+1))/(xi(k+1)-xi(j+1)))
        end
    end
    T=T+p;
    printf('\nT(%i) = %g',k+1,p)
end
printf('\n\nT = %g',T)

