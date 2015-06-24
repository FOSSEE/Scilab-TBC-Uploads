clc;
clear;
num=input("Input a number: ")
sum=0;
for i=1:100000
    sum=sum+num;
end
disp(sum,"The number summed up 100,000 times is=")