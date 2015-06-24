//Example 8.2
//Simpsons 1/3rd Rule and Richardson Extrapolation
//Page no 264
clc;clear;close;
a=1;b=2;
// simpsons rule when h=0.5
h=0.5
n=(b-a)/h+1;
for i=1:n
    if i==1 then
        x(1,i)=a
    else
        x(1,i)=x(i-1)+h
    end
    y(1,i)=1/x(i)
end
disp(y,"f(x) = ",x,"x = ")
S=0;
for i=1:n
    if(i==1 | i==n)
        S=S+y(1,i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y(1,i)
    else
        S=S+2*y(1,i)
    end
end
S=S*h/3;
printf('\n\nSimpsons 1/3rd Rule Sum when h is 0.5  = %g\n\n\n',S)


//simpsons rule when h=0.25
h=0.25
n=(b-a)/h+1;
for i=1:n
    if i==1 then
        x(1,i)=a
    else
        x(1,i)=x(i-1)+h
    end
    y(1,i)=1/x(i)
end
disp(y,"f(x) = ",x,"x = ")
S2=0;
for i=1:n
    if(i==1 | i==n)
        S2=S2+y(1,i)
    elseif(((i)/2)-fix((i)/2)==0)
        S2=S2+4*y(1,i)
    else
        S2=S2+2*y(1,i)
    end
end
S2=S2*h/3;
printf('\n\nSimpsons 1/3rd Rule Sum when h is 0.25  = %g\n\n\n',S2)


//Richardson Extrapolation
Q12=16*S2/15-S/15;
disp(Q12,"Q12 = ")
disp(log(2)-log(1),"Exact Value = ")