//Eg-9.2
//pg-387

clear
clc


//zeros of T3(x)
n=3;
for i=1:3
    lambda(i)=cosd((2*i-1)*180/(2*n));
end
disp("zeros of T3(x)")
disp(lambda)