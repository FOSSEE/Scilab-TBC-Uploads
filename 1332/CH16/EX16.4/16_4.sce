//Example 16.4
//Finite Difference Method
//Page no. 582
clc;close;clear;

x=0;h=0.25;q=-1;Y(1)=-2;Y(5)=1;
printf('\n i\txi\tYi\tpi\tqi\tri\n-----------------------------------------------\n')
for i=1:5
    r(i)=-x^2
    if i>1 & i<5 then
        printf(' %i\t%g\t%s\t%g\t%i\t%g\n',i-1,x,"?",x,q,r(i))
    else
        printf(' %i\t%g\t%g\t%g\t%i\t%g\n',i-1,x,Y(i),x,q,r(i))
    end
    x=x+h
end
x=0;
printf('-----------------------------------------------\n')
for i=1:3
    x=x+h
    for j=1:3
        if i==j then
            A(i,j)=2+h^2*q
        elseif i<j & abs(i-j)~=2
            A(i,j)=-1+h*x/2
        elseif i>j & abs(i-j)~=2
            A(i,j)=-1-h*x/2
        end
    end
    if i==3 then
        B(i)=-h^2*r(i+1)+(-h*x/2+1)*Y(1+2*(i-1))
    else
        B(i)=-h^2*r(i+1)+(h*x/2+1)*Y(1+2*(i-1))
    end
    B(i)=(-1)^(i+1)*B(i)
end
disp(B,"B =",A,'A = ')
y=inv(A)*B
for i=1:3
    Y(i+1)=y(i)
end
x=0;
disp("The Solution is :",B,"B =",A,'A = ')
printf(' x :')
for i=1:5
    printf('\t %.2f',x)
    x=x+h
end
x=0;printf('\n y :');
for i=1:5
    printf('\t%.3f',Y(i))
end