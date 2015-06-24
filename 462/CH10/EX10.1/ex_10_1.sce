//example 10(a)//
clc
//clears the screen//
clear
//clears already existing variables//
disp('digital input to analog output of 4 bit is as follows')
for(i=0:15)
x=dec2bin(i);
disp(x)
disp(i);
i=i+1;
end
//displays the result//