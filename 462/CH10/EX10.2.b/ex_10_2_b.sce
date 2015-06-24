//example 10.2(b)//
clc
//clears the screen//
clear
//clears already existing variables//
disp('digital input to analog output of 4 bit is as follows')
for(i=0:15)
x=dec2bin(i);
//decimal to binary conversion//
disp(x)
//binary number//
j=i-8;
disp(j);
//analog number//
i=i+1;
end
//displays the result//