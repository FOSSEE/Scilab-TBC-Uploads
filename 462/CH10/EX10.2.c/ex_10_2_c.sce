//example 10.2(c)//
clc
//clears the screen//
clear
//clears already existing variables//
disp('digital input to analog output of 4 bit as per given condition is as follows')
for(i=0:7)
x=dec2bin(i);
//decimal to binary conversion//
disp(x)
//displays binary or say digital form//
disp(i)
//displays analog form//
i=i+1;
end
for(i=8:15)
x=dec2bin(i);
//conversion//
disp(x)
f=i-8;
y=2*f;
t=y-i;
disp(t)
//displays analog form//
i=i+1
end
//displays the result//