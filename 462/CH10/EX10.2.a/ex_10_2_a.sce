//example 10.2(a)//
clc
//clears the screen//
clear
//clears already existing variables//
disp('digital input to analog output of 4 bit is as follows')
for(i=0:15)
x=dec2bin(i);
//conversion of decimal to binary//
disp(x)
//binary form of the number//
disp(i);
//decimal form of the number//
i=i+1;
end
//displays the result//