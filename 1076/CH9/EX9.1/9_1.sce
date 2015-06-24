clear;
clc

y=[0 1 (-.4*%i)
0 2 (-.3*%i)
1 2 (-.5*%i)]
n=2
e=3

Y=zeros(n,n)

for i=1:e
    n1=real(y(i,1))
    n2=real(y(i,2))
    ynew=y(i,3)
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew
    else
        Y(n1,n1)= Y(n1,n1)+ynew
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew
    end
end
disp(Y)
