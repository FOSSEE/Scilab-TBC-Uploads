clc;
clear;
function y=f(x)
    y=exp(x)
endfunction
sum=1;
test=0;
i=0;
term=1;
x=input("Input value of x:")
while sum~=test
    disp(sum,"sum:",term,"term:",i,"i:")
    disp("-------------------------------------")
    i=i+1;
    term=term*x/i;
    test=sum;
    sum=sum+term;
end
disp(f(x),"Exact Value")