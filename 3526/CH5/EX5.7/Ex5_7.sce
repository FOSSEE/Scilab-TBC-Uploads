//Example 5.6
//page 155
clc
T=[1173 1273 1373 1473]
//in K


//for loop t

for i=1:1:4
t(i)=0.0861/exp(-16558/T(i))
end
disp(t,"The combination temp in second is")
